define({ "api": [
  {
    "type": "get",
    "url": "/lab_api/:collection/select",
    "title": "Request Collection Info",
    "name": "GetCollection",
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
  }
] });
