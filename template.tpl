___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 Client ID \u0026 Session Info",
  "description": "get GA4 client id, session id and session number information",
  "categories": [
    "ANALYTICS"
  ],
  "brand": {
    "id": "umut-cakmak",
    "displayName": "Umut Cakmak"
  }
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "parameter",
    "displayName": "Parameter",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "client_id",
        "displayValue": "Client ID"
      },
      {
        "value": "session_id",
        "displayValue": "Session ID"
      },
      {
        "value": "session_number",
        "displayValue": "Session Number"
      }
    ],
    "simpleValueType": true,
    "help": "Select the parameter you want to retrieve"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const readAnalyticsStorage = require('readAnalyticsStorage');
const analyticsStorageData = readAnalyticsStorage();
var value;
if(data.parameter == 'client_id') {
  value = analyticsStorageData.client_id;
} else if (data.parameter == 'session_id') {
  value = analyticsStorageData.sessions[0].session_id;
} else if (data.parameter == 'session_number') {
  value = analyticsStorageData.sessions[0].session_number;
}
return value;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_analytics_storage",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 8/2/2025, 9:54:52 AM


