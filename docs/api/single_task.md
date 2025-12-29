# GET

GET /api/tasks/{id}  
Возвращает информацию по выбранной задаче

**Пример запроса**  
http://localhost/api/tasks/2

**json-коллекция всех запросов**  
[Tasks_CRUD_API.postman_collection.json](Tasks_CRUD_API.postman_collection.json)

**json-коллекция GET-запроса:**

```json
{
  "name": "Single_task",
  "request": {
    "method": "GET",
    "header": [
      {
        "key": "Accept",
        "value": "application/json",
        "type": "text"
      }
    ],
    "url": {
      "raw": "{{base_url}}/api/tasks/2",
      "host": [
        "{{base_url}}"
      ],
      "path": [
        "api",
        "tasks",
        "2"
      ]
    }
  },
  "response": [
    {
      "name": "Single_task",
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
          "raw": "{{base_url}}/api/tasks/2",
          "host": [
            "{{base_url}}"
          ],
          "path": [
            "api",
            "tasks",
            "2"
          ]
        }
      },
      "status": "OK",
      "code": 200,
      "_postman_previewlanguage": null,
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
          "value": "Mon, 29 Dec 2025 15:12:09 GMT"
        },
        {
          "key": "Access-Control-Allow-Origin",
          "value": "*"
        }
      ],
      "cookie": [],
      "body": "{\n    \"id\": 2,\n    \"title\": \"Test task 2\",\n    \"description\": \"Create the appearance of work\",\n    \"status\": \"active\",\n    \"created_at\": \"2025-12-29T12:01:51.000000Z\",\n    \"updated_at\": \"2025-12-29T12:01:51.000000Z\"\n}"
    }
  ]
}
```