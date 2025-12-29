# POST

POST /api/tasks  
Добавляет новую задачу

**Пример запроса**  
http://localhost/api/tasks  
Тело запроса:  
{  
"title": "New created task",  
"description": "Created description",  
"status": "active"  
}

**json-коллекция всех запросов**  
[Tasks_CRUD_API.postman_collection.json](Tasks_CRUD_API.postman_collection.json)

**json-коллекция POST-запроса:**

```json
{
  "name": "Create_task",
  "request": {
    "auth": {
      "type": "noauth"
    },
    "method": "POST",
    "header": [
      {
        "key": "Accept",
        "value": "application/json",
        "type": "text"
      }
    ],
    "body": {
      "mode": "raw",
      "raw": "{\r\n    \"title\": \"New created task\",\r\n    \"description\": \"Created description\",\r\n    \"status\": \"active\"\r\n}",
      "options": {
        "raw": {
          "language": "json"
        }
      }
    },
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
      "name": "Create_task",
      "originalRequest": {
        "method": "POST",
        "header": [
          {
            "key": "Accept",
            "value": "application/json",
            "type": "text"
          }
        ],
        "body": {
          "mode": "raw",
          "raw": "{\r\n    \"title\": \"New created task\",\r\n    \"description\": \"Created description\",\r\n    \"status\": \"active\"\r\n}",
          "options": {
            "raw": {
              "language": "json"
            }
          }
        },
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
      "status": "Created",
      "code": 201,
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
          "value": "Mon, 29 Dec 2025 15:15:11 GMT"
        },
        {
          "key": "Access-Control-Allow-Origin",
          "value": "*"
        }
      ],
      "cookie": [],
      "body": "{\n    \"title\": \"New created task\",\n    \"description\": \"Created description\",\n    \"status\": \"active\",\n    \"updated_at\": \"2025-12-29T15:15:11.000000Z\",\n    \"created_at\": \"2025-12-29T15:15:11.000000Z\",\n    \"id\": 3\n}"
    }
  ]
}
```