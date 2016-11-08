define({ "api": [
  {
    "type": "post",
    "url": "/lab_api/v1/auth/login",
    "title": "Request to Login",
    "name": "Login",
    "group": "Auth",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "username",
            "description": "<p>username</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "password",
            "description": "<p>password</p>"
          }
        ]
      }
    },
    "filename": "controllers/index.js",
    "groupTitle": "Auth"
  },
  {
    "type": "get",
    "url": "/lab_api/v1/auth/logout",
    "title": "Request to Logout",
    "name": "Logout",
    "group": "Auth",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "returnTo",
            "description": "<p>redirect url</p>"
          }
        ]
      }
    },
    "filename": "controllers/index.js",
    "groupTitle": "Auth"
  },
  {
    "type": "post",
    "url": "/lab_api/v1/:collection/insert",
    "title": "Request to Insert Collection",
    "name": "InsertCollection",
    "group": "Collection",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "data",
            "description": "<p>new json data</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "json",
            "optional": false,
            "field": "info",
            "description": "<p>info after insert</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Example Data on Success",
          "content": "{ \"ok\": 1, \"n\": 1 }",
          "type": "json"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "json",
            "optional": false,
            "field": "error",
            "description": "<p>Error message of collection insert</p>"
          }
        ]
      }
    },
    "sampleRequest": [
      {
        "url": "/lab_api/v1/thesis/insert"
      }
    ],
    "filename": "controllers/index.js",
    "groupTitle": "Collection"
  },
  {
    "type": "get",
    "url": "/lab_api/v1/:collection/select",
    "title": "Request Collection Info",
    "name": "SelectCollection",
    "group": "Collection",
    "version": "1.0.0",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "json",
            "optional": false,
            "field": "id",
            "description": "<p>Index of collection</p>"
          },
          {
            "group": "Success 200",
            "type": "json",
            "optional": false,
            "field": "content",
            "description": "<p>Content of collection</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Example Data on Success",
          "content": "[\n     {\"_id\":\"581a18d40aa22e520893eb1c\",\"id\":1,\"type\":\"B\",\"name\":\"可程式化生理訊號閘道器\",\"country\":\"台灣\",\"number\":\"M412747\\t\",\"member\":\"湯秉宏、曾明性\",\"owner\":\"湯秉宏、曾明性\",\"date\":\"100/08/16\"},\n     {\"_id\":\"581a18d40aa22e520893eb1d\",\"id\":2,\"type\":\"B\",\"name\":\"睡眠障礙矯正輔助裝置\",\"country\":\"台灣\",\"number\":\"M425645\\t\",\"member\":\"湯秉宏、曾明性\",\"owner\":\"湯秉宏、曾明性\",\"date\":\"01/04/01\"}\n]",
          "type": "json"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "json",
            "optional": false,
            "field": "error",
            "description": "<p>Error message of collection operation</p>"
          }
        ]
      }
    },
    "sampleRequest": [
      {
        "url": "/lab_api/v1/thesis/select"
      }
    ],
    "filename": "controllers/index.js",
    "groupTitle": "Collection"
  },
  {
    "type": "post",
    "url": "/lab_api/v1/:collection/updateTimeById",
    "title": "Request to Update Time of Collection",
    "name": "UpdateCollection",
    "group": "Collection",
    "version": "1.0.0",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>new id</p>"
          },
          {
            "group": "Parameter",
            "type": "String",
            "optional": false,
            "field": "time",
            "description": "<p>new submit time</p>"
          }
        ]
      }
    },
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "json",
            "optional": false,
            "field": "info",
            "description": "<p>info after update</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Example Data on Success",
          "content": "{ \"ok\": 1, \"nModified\": 1, \"n\": 1 }",
          "type": "json"
        }
      ]
    },
    "error": {
      "fields": {
        "Error 4xx": [
          {
            "group": "Error 4xx",
            "type": "json",
            "optional": false,
            "field": "error",
            "description": "<p>Error message of collection update</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Example Data on Error",
          "content": "{ \"error\": \"Cannot read property 'id' of undefined\" }",
          "type": "json"
        }
      ]
    },
    "sampleRequest": [
      {
        "url": "/lab_api/v1/thesis/updateTimeById"
      }
    ],
    "filename": "controllers/index.js",
    "groupTitle": "Collection"
  }
] });
