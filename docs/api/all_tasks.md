# GET

GET /api/tasks  
Возвращает список всех задач

**Пример запроса**  
http://localhost/api/tasks

**json-коллекция всех запросов**  
[Tasks_CRUD_API.postman_collection.json](Tasks_CRUD_API.postman_collection.json)

**json-коллекция GET-запроса:**
```json
{
  "name": "All_tasks",
  "request": {
    "auth": {
      "type": "noauth"
    },
    "method": "GET",
    "header": [
      {
        "key": "Accept",
        "value": "application/json",
        "type": "text"
      }
    ],
    "url": {
      "raw": "{{base_url}}/api/tasks",
      "host": [
        "{{base_url}}"
      ],
      "path": [
        "api",
        "tasks"
      ]
    }
  },
  "response": [
    {
      "name": "All_tasks",
      "originalRequest": {
        "method": "GET",
        "header": [
          {
            "key": "Accept",
            "value": "application/json",
            "type": "text"
          }
        ],
        "url": {
          "raw": "{{base_url}}/api/tasks",
          "host": [
            "{{base_url}}"
          ],
          "path": [
            "api",
            "tasks"
          ]
        }
      },
      "status": "OK",
      "code": 200,
      "_postman_previewlanguage": "",
      "header": [
        {
          "key": "Server",
          "value": "nginx/1.29.4"
        },
        {
          "key": "Content-Type",
          "value": "application/json"
        },
        {
          "key": "Transfer-Encoding",
          "value": "chunked"
        },
        {
          "key": "Connection",
          "value": "keep-alive"
        },
        {
          "key": "X-Powered-By",
          "value": "PHP/8.2.30"
        },
        {
          "key": "Cache-Control",
          "value": "no-cache, private"
        },
        {
          "key": "Date",
          "value": "Mon, 29 Dec 2025 15:10:04 GMT"
        },
        {
          "key": "Access-Control-Allow-Origin",
          "value": "*"
        }
      ],
      "cookie": [],
      "body": "[\n    {\n        \"id\": 1,\n        \"title\": \"Test task 1\",\n        \"description\": \"Add bugs\",\n        \"status\": \"completed\",\n        \"created_at\": \"2025-12-29T12:01:51.000000Z\",\n        \"updated_at\": \"2025-12-29T12:01:51.000000Z\"\n    },\n    {\n        \"id\": 2,\n        \"title\": \"Test task 2\",\n        \"description\": \"Create the appearance of work\",\n        \"status\": \"active\",\n        \"created_at\": \"2025-12-29T12:01:51.000000Z\",\n        \"updated_at\": \"2025-12-29T12:01:51.000000Z\"\n    }\n]"
    }
  ]
}
```