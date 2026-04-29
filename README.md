# AdsMast Attribution

A Google Tag Manager Web template that adds AdsMast post-click attribution
to your existing GA4 measurement. When the AdsMast service recognises the
visitor from a prior click on an AdsMast-tracked ad, the tag sets the
event's `source`, `medium`, `campaign` (and a small set of
AdsMast-specific custom dimensions) on the event before the Google Tag
fires. Customers without an AdsMast account get nothing from this tag —
it is not an open analytics tool.

## Install

1. Import `template.tpl` (Templates → Tag Templates → New → Import) or
   add **AdsMast Attribution** from the Community Template Gallery.
2. Create a tag of type **AdsMast Attribution** and fill in your
   `ADV-…` advertiser ID. Do not set a trigger.
3. On your existing **Google Tag**, open Advanced → Tag Sequencing and
   set the AdsMast tag as the **Setup Tag**. Leave *Don't fire if setup
   fails* **unchecked** — attribution must never block GA4.
4. Register the AdsMast custom dimensions in GA4 Admin
   (`adsmast_attributed_source`, `adsmast_attributed_medium`,
   `adsmast_attributed_campaign`, `adsmast_decision_id`,
   `adsmast_rewrite_reason`, `adsmast_advertiser_id` — Event scope;
   `adsmast_variant` — User scope) and publish.

If you signed up through `panel.adsmast.com`, AdsMast performs steps
1–4 automatically via the GTM Admin API and GA4 Admin API.

## Consent

The tag reads consent state via the GTM `isConsentGranted` API and
**does not fire** when `analytics_storage` is not `granted`. The SDK
itself re-checks the same flag before any network call.

## Data the SDK sends to AdsMast

When fired, the tag injects `https://decide.adsmast.com/sdk/v1/adsmast.js`
and the SDK sends a single HTTPS POST to
`https://decide.adsmast.com/v1/decide` with this JSON payload:

| Field | Source |
|---|---|
| `advertiser_id` | the `ADV-…` value you configured on the tag |
| `ga_client_id`  | the `_ga` first-party cookie, sent raw; hashed (HMAC-SHA256, per-advertiser key) at the AdsMast edge before any persistent storage |
| `am_click_id`   | the AdsMast click identifier from the URL parameter (`?am_click_id=…`) or first-party cookie, when present; otherwise `null` |
| `page_url`      | `window.location.href` |
| `referrer`      | `document.referrer` |
| `event_ts`      | `Date.now()` |
| `template_version`, `sdk_version` | static version strings |

In addition, AdsMast's server observes the request's User-Agent header
(for browser/OS family) and the source IP address. The IP is truncated
to /24 (IPv4) or /48 (IPv6) at the edge before any storage and is used
only to derive the visitor's country.

The SDK skips the network call entirely when there is neither an
`am_click_id` *nor* a direct visit (no referrer or self-referral, and
no `utm_source` in the URL), so most third-party arrivals never reach
AdsMast.

## What the tag writes to GA4

If AdsMast's server matches the visitor against a recent click in its
click-history dataset, the SDK applies — via a fixed allow-list of
`gtag('set', …)` calls before the Google Tag fires:

- the **campaign tuple** (`source`, `medium`, `campaign`, `term`,
  `content`) — set to the AdsMast-tracked click's values;
- `traffic_type` — set to `paid` (so GA4 classifies the session as
  paid traffic from the AdsMast-tracked source);
- **click identifiers** that are non-empty on the event (`gclid`,
  `fbclid`, `dclid`, `srsltid`, `gbraid`, `wbraid`) — set to `null` so
  that GA4's own click-identifier auto-attribution does not override
  the AdsMast values;
- six event-scoped custom dimensions
  (`adsmast_attributed_source/medium/campaign`, `adsmast_decision_id`,
  `adsmast_rewrite_reason`, `adsmast_advertiser_id`);
- one user-scoped property (`adsmast_variant`).

The tag does **not** modify `user_id`, `client_id`, e-commerce values
(`transaction_id`, `value`, `currency`, items), or page-state fields
(`page_location`, `page_title`, `page_referrer`).

## Privacy & retention

- All processing takes place in the European Union (Google Cloud
  `europe-central2` Warsaw, with `europe-west1` Belgium for failover).
- Single sub-processor: **Google Cloud**.
- Decision-call audit logs are retained up to 180 days. AdsMast's
  underlying click history is retained up to 395 days (the longest
  documented attribution window).
- AdsMast **does not use** canvas, font enumeration, audio context,
  WebGL, or any other browser fingerprinting technique.
- The tag fails open: any error in the AdsMast SDK or server returns
  control to GTM with `gtmOnSuccess`, so the customer's GA4 event
  always fires.

## Troubleshooting

- **AdsMast custom dimensions are empty in DebugView** — usually
  consent denied, Tag Sequencing not wired, or the dimensions have
  not been registered in GA4 Admin yet.
- **`source`/`medium` not changing** — confirm the tag is set as the
  **Setup Tag** of the Google Tag (not as an independent tag with its
  own trigger), and that `am_click_id` is being appended to your
  AdsMast-tracked ad URLs.
- **Tag never fires** — make sure the AdsMast tag has *no* trigger of
  its own; it runs only when the Google Tag's trigger fires.
- **Need a kill-switch** — uncheck **Enabled** on the tag and republish.

## License & support

Apache 2.0 — see [LICENSE](./LICENSE). Support: `support@adsmast.com`.

For your privacy/legal team: AdsMast operates this service as a joint
controller with the customer under Article 26 GDPR. The customer-
facing privacy-notice language and the joint-controller arrangement
are available from `panel.adsmast.com` after sign-up.
