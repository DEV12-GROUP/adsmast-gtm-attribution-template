___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "adsmast_attribution",
  "version": 1,
  "securityGroups": ["NON_GOOGLE_SCRIPTS"],
  "displayName": "AdsMast Attribution",
  "brand": {
    "id": "adsmast",
    "displayName": "AdsMast",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAIAAAAlC+aJAAAFYklEQVR42u1aO2xTSRSduTP+JVuwNMYhxDbhUyxCtLSJIERCawskCgRssTEdBR0oUj4gEKIILVqKUCC2wEEsCUIYtgApSBSwXTDFxiDtNpQg289vZu7dYpy3DxskJ8TJs+RTWn7vzf2cOWc+DBGVUlNTU+l0WkrJOWcBBudcSplKpSYmJlxXIRJzHCebzbIORCaTcRxHhEKhmzdvSimJqFOGzjkPhUJLS0tCCNbf3w8AEOzOaQZwDgDb+/oYALCORUcPvosuuugiGKLWPrEUQvh/QURE7Ga8/RXgnBNRIpGYnp7mnDNGxqAMyduztxcXFwHAGBPolEgpGWMXL16kL1F4UmCMNfRVEH2itYrFYlEp5TiOuwLHcXbt2hV0AyOF4IwfGTlCRFprXIHrukQ0PT3tlSigsB0yNzdHRK6rvAC01kS0/PdyNBqxVQquuR0YGKhUKohojEEftNJElMn8bJeF6/bRdQ/g1KnTsVhMa92QZrviG/s1R0REGFD6hsPhd+/eNRDAwhbEcZzBnTvXkcrrVgEBwBgbHhres2ePMcYbn6e+nHOtdSQSOX3mTBDnIkvf+3P3G+hLRIT0BZWXl6PRaLCobNOZTCb99DXGENHTp8/K5TIR+alsN3ICNJ/aoYyPjxOR67qIiAYRsebUUqnUq1eviEgpjYjKVUT06NGjAHXRV+mrlELEQqHAGLtw4UJjYLVagFRZCsE4Hz0y6p98lFJEdOLECc55KpUql8tea1lVvnz5clC6qK6++TkvzVobIvrnn39/6O21OV7RZtejcqlUCgSVPfUtlysNOb5xY4YxFolEGGNHjx7118fGkM1kNr8IfvNc73JEY4wx5sCBA7Y+nPNoNFpaLnkxuK4iooX5hU022JzX91nfvi366UtEi4uLXn1skFevXg0claUQjPGRkZFm+uZyOQAIh8MAIKUEgH37ftJao6mP3rbZpUuXNrOLbPXz+bynvkYbIvr48WNvb2/z/wtPCkRkZ9j1UmX5PfQ1xgwMDIyOjhKRDQYJgcGLFy+2bv0xHo97y18ppdb62Z/PDh0+9P/j2qTT6ZHDh/94+ND+YfPpa1GtVp0mVKtVazQ82GZbWFjwvOAm0LdYLDabZ/o2vnTYdbvxPVSGtfaPYIwNDQ3t3bvXb569tQt+HdSwp6O1DkfCv2y8wa7T916eiJSvf5Sr3BbgrTY9VY7FNlCVbap27Njhdzi2JahlNKyV12yw5doCQMSTJ0/29PQopepfJcaBX79+vVQqCSG+deZJRKFQaGpqasuWLUTEOSdGjLGzubMPHjzYiM1TvnLavLS05NFXa01IxWKxxZfc+u1Wsyrv3r17I5hgvc3w8LB/8rGyOj4+DgDRaFR+G5FIREp58OBBIjLa+B+/cuXKRqiype/du783pLBarabT6VZSyDkHgNevX3uqbPX7/fv3PbFYe6lsB9eX6Pv8+XODeZ6fn2/RWtocnzt3jojUyvJfKU1Ex48fb28R7KvPnz/vV187jRw7doyxlrbcADhjLB6Pf/r0iYhsFqwqP378uL00sMV98+YvrXWtVlNKuTVXa/3hw4fYaqpvC3Xnzh1jTLVaVSuoVCqDg4PtisF+1ZrnBly7dm1VpffPBA2YmZlZ1atW3W379+9/+fKl1trGY+f72dlZznnrsziiIWLPnz/P38tv799utOHAEVEIEY/HhRBBP8VppVHbeEbW8AF7KLa260YA0PxgB91c6qKLLrrognVvLn7X7VGARCIBANbidpLdAA4A27Ztg7GxMUQEELxzLu9yzqWQiJg7m+vgy9/ZbNZxHGZXQ5OTk8lkslOu3yeTycmJCbue/g88AXeytiSA1AAAAABJRU5ErkJggg=="
  },
  "description": "Adds AdsMast post-click attribution to your GA4 measurement. When AdsMast's service recognises the visitor from a prior AdsMast-tracked click, the tag sets GA4's source, medium, campaign and AdsMast-specific custom dimensions on the event before the Google Tag fires. Requires Tag Sequencing: install as the Setup Tag of your Google Tag. Gated on analytics_storage consent.",
  "containerContexts": ["WEB"],
  "categories": ["ANALYTICS", "ATTRIBUTION"]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "advertiserId",
    "displayName": "AdsMast Advertiser ID",
    "simpleValueType": true,
    "help": "Your AdsMast advertiser ID, e.g. ADV-12345678.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": ["^ADV-[A-Z0-9]{8,24}$"],
        "errorMessage": "Advertiser ID must be ADV- followed by 8-24 uppercase letters or digits (e.g. ADV-12345678)."
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "enabled",
    "displayName": "Enabled",
    "checkboxText": "Enable AdsMast attribution on this container.",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "Uncheck as a kill-switch; the tag short-circuits to gtmOnSuccess without injecting the SDK."
  },
  {
    "type": "GROUP",
    "name": "advanced",
    "displayName": "Advanced",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "endpointBase",
        "displayName": "Endpoint base URL",
        "simpleValueType": true,
        "defaultValue": "https://decide.adsmast.com",
        "help": "AdsMast decision endpoint. Leave at the default; staging environments may override.",
        "valueValidators": [
          {"type": "NON_EMPTY"},
          {
            "type": "REGEX",
            "args": ["^https://(decide\\.adsmast\\.com|decide-[a-z0-9-]+\\.adsmast\\.com)$"],
            "errorMessage": "Endpoint must be https://decide.adsmast.com (or a decide-<env>.adsmast.com staging host)."
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "sdkVersion",
        "displayName": "SDK version",
        "simpleValueType": true,
        "defaultValue": "v1",
        "help": "Pinned SDK tag, e.g. v1, v1.2, v1.2.3.",
        "valueValidators": [
          {"type": "NON_EMPTY"},
          {
            "type": "REGEX",
            "args": ["^v[0-9]+(\\.[0-9]+)*$"],
            "errorMessage": "SDK version must look like v1, v1.2, or v1.2.3."
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "timeoutMs",
        "displayName": "Decision timeout (ms)",
        "simpleValueType": true,
        "defaultValue": 600,
        "help": "Decision timeout in ms before falling through. 600 is the default.",
        "valueValidators": [
          {"type": "NON_EMPTY"},
          {"type": "NON_NEGATIVE_NUMBER"}
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "debugMode",
        "displayName": "Debug logging",
        "checkboxText": "Log to browser console (debug environment only).",
        "simpleValueType": true,
        "defaultValue": false
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const isConsentGranted = require('isConsentGranted');
const logToConsole = require('logToConsole');
const makeNumber = require('makeNumber');

const TEMPLATE_VERSION = '1.1.0';

const advertiserId = data.advertiserId;
const enabled = data.enabled;
const endpointBase = data.endpointBase || 'https://decide.adsmast.com';
const sdkVersion = data.sdkVersion || 'v1';
const timeoutMs = makeNumber(data.timeoutMs) || 600;
const debugMode = data.debugMode === true;

const log = function(msg) {
  if (debugMode) {
    logToConsole('[AdsMast] ' + msg);
  }
};

if (enabled === false) {
  log('disabled');
  data.gtmOnSuccess();
  return;
}

if (!isConsentGranted('analytics_storage')) {
  log('analytics_storage denied');
  data.gtmOnSuccess();
  return;
}

const sdkUrl = endpointBase + '/sdk/' + sdkVersion + '/adsmast.js';

if (!queryPermission('inject_script', sdkUrl)) {
  log('inject_script denied: ' + sdkUrl);
  data.gtmOnFailure();
  return;
}

const onSuccess = function() {
  const run = copyFromWindow('AdsMast.run');
  if (typeof run !== 'function') {
    log('AdsMast.run missing');
    data.gtmOnFailure();
    return;
  }
  callInWindow('AdsMast.run', {
    advertiserId: advertiserId,
    endpoint: endpointBase,
    timeoutMs: timeoutMs,
    debug: debugMode,
    templateVersion: TEMPLATE_VERSION,
    sdkVersion: sdkVersion,
    consent: {
      ad_storage: isConsentGranted('ad_storage'),
      analytics_storage: isConsentGranted('analytics_storage')
    },
    extras: {},
    gtmOnSuccess: data.gtmOnSuccess,
    gtmOnFailure: data.gtmOnFailure
  });
};

const onFailure = function() {
  log('SDK load failed: ' + sdkUrl);
  data.gtmOnFailure();
};

injectScript(sdkUrl, onSuccess, onFailure, sdkUrl);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://decide.adsmast.com/sdk/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "key"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"},
                  {"type": 1, "string": "execute"}
                ],
                "mapValue": [
                  {"type": 1, "string": "AdsMast"},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": true}
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "key"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"},
                  {"type": 1, "string": "execute"}
                ],
                "mapValue": [
                  {"type": 1, "string": "AdsMast.run"},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": false},
                  {"type": 8, "boolean": true}
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "consentType"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"}
                ],
                "mapValue": [
                  {"type": 1, "string": "analytics_storage"},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": false}
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {"type": 1, "string": "consentType"},
                  {"type": 1, "string": "read"},
                  {"type": 1, "string": "write"}
                ],
                "mapValue": [
                  {"type": 1, "string": "ad_storage"},
                  {"type": 8, "boolean": true},
                  {"type": 8, "boolean": false}
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: disabled short-circuits to gtmOnSuccess
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: false,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: false
    };

    mock('isConsentGranted', function() { return true; });
    mock('injectScript', function() { fail('injectScript called while disabled'); });

    runCode(mockData);

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();

- name: consent denied short-circuits to gtmOnSuccess
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: true,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: false
    };

    mock('isConsentGranted', function(type) {
      assertThat(type).isEqualTo('analytics_storage');
      return false;
    });
    mock('injectScript', function() { fail('injectScript called without consent'); });

    runCode(mockData);

    assertApi('gtmOnSuccess').wasCalled();
    assertApi('gtmOnFailure').wasNotCalled();

- name: injects pinned SDK URL
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: true,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: false
    };

    let injectedUrl = null;
    mock('isConsentGranted', function() { return true; });
    mock('queryPermission', function() { return true; });
    mock('injectScript', function(url) {
      injectedUrl = url;
    });

    runCode(mockData);

    assertThat(injectedUrl).isEqualTo('https://decide.adsmast.com/sdk/v1/adsmast.js');

- name: SDK load invokes AdsMast run with config
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: true,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: true
    };

    let runArgs = null;
    mock('isConsentGranted', function() { return true; });
    mock('queryPermission', function() { return true; });
    mock('copyFromWindow', function(key) {
      if (key === 'AdsMast.run') return function() {};
      return undefined;
    });
    mock('callInWindow', function(key, args) {
      if (key === 'AdsMast.run') runArgs = args;
    });
    mock('injectScript', function(url, onSuccess) {
      onSuccess();
    });

    runCode(mockData);

    assertThat(runArgs).isNotEqualTo(null);
    assertThat(runArgs.advertiserId).isEqualTo('ADV-TEST0001');
    assertThat(runArgs.endpoint).isEqualTo('https://decide.adsmast.com');
    assertThat(runArgs.timeoutMs).isEqualTo(600);
    assertThat(runArgs.debug).isEqualTo(true);

- name: SDK load failure calls gtmOnFailure
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: true,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: false
    };

    mock('isConsentGranted', function() { return true; });
    mock('queryPermission', function() { return true; });
    mock('injectScript', function(url, onSuccess, onFailure) {
      onFailure();
    });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();

- name: permission denied calls gtmOnFailure
  code: |
    const mockData = {
      advertiserId: 'ADV-TEST0001',
      enabled: true,
      endpointBase: 'https://decide.adsmast.com',
      sdkVersion: 'v1',
      timeoutMs: 600,
      debugMode: false
    };

    mock('isConsentGranted', function() { return true; });
    mock('queryPermission', function() { return false; });
    mock('injectScript', function() { fail('injectScript called without permission'); });

    runCode(mockData);

    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();


___NOTES___

1.1.0 (2026-04-29): single-product release (ADR-014). The tag rewrites
GA4's native attribution before the Google Tag fires:
  - campaign tuple (source, medium, campaign, term, content)
  - traffic_type
  - clears configured click identifiers (gclid, fbclid, ...) so GA4 does
    not override AdsMast's source/medium with platform-detected values
  - sets event-scoped adsmast_* params (decision_id, rewrite_reason,
    advertiser_id, attributed_source/medium/campaign)
  - sets user-scoped adsmast_* properties (variant, first-touch source)

Identity persists across sessions via the customer's own first-party
_ga cookie, bridged server-side - no customer DNS work required
(ADR-011). Probabilistic identity recovery (ADR-013) bridges Safari
visits where _ga has been purged.

The inject_script permission grants only decide.adsmast.com/sdk/*.
Staging environments (decide-<env>.adsmast.com) need to widen this in
their own container - importers can widen but not narrow author defaults.

The window.AdsMast.run({...}) call is the SDK contract, versioned via
the SDK URL. New fields are additive; renames need a v2 SDK + template.
The `extras` object is reserved for forward-compatible extension.
