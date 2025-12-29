# PUT

PUT /api/tasks/{id}  
Добавляет новую задачу

**Пример запроса**  
http://localhost/api/tasks/3  
Тело запроса:  
{  
"title": "Updated task",  
"status": "completed"  
}

**json-коллекция всех запросов**  
[Tasks_CRUD_API.postman_collection.json](Tasks_CRUD_API.postman_collection.json)

**json-коллекция PUT-запроса:**

```json
{
  "name": "Update_task",
  "request": {
    "method": "PUT",
    "header": [
      {
        "key": "Accept",
        "value": "application/json",
        "type": "text"
      }
    ],
    "body": {
      "mode": "raw",
      "raw": "{\r\n    \"title\": \"Updated task\",\r\n    \"status\": \"completed\"\r\n}",
      "options": {
        "raw": {
          "language": "json"
        }
      }
    },
    "url": {
      "raw": "{{base_url}}/api/tasks/3",
      "host": [
        "{{base_url}}"
      ],
      "path": [
        "api",
        "tasks",
        "3"
      ]
    }
  },
  "response": [
    {
      "name": "Update_task",
      "originalRequest": {
        "method": "PUT",
        "header": [
          {
            "key": "Accept",
            "value": "application/json",
            "type": "text"
          }
        ],
        "body": {
          "mode": "raw",
          "raw": "{\r\n    \"title\": \"Updated task\",\r\n    \"status\": \"completed\"\r\n}",
          "options": {
            "raw": {
              "language": "json"
            }
          }
        },
        "url": {
          "raw": "{{base_url}}/api/tasks/3",
          "host": [
            "{{base_url}}"
          ],
          "path": [
            "api",
            "tasks",
            "3"
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
          "value": "Mon, 29 Dec 2025 15:17:37 GMT"
        },
        {
          "key": "Access-Control-Allow-Origin",
          "value": "*"
        }
      ],
      "cookie": [],
      "body": "{\n    \"id\": 3,\n    \"title\": \"Updated task\",\n    \"description\": \"Created description\",\n    \"status\": \"completed\",\n    \"created_at\": \"2025-12-29T15:15:11.000000Z\",\n    \"updated_at\": \"2025-12-29T15:17:37.000000Z\"\n}"
    }
  ]
}
```