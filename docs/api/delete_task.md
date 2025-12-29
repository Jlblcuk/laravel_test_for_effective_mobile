# DELETE

DELETE /api/tasks/{id}  
Добавляет новую задачу

**Пример запроса**  
http://localhost/api/tasks/3

**json-коллекция всех запросов**  
[Tasks_CRUD_API.postman_collection.json](Tasks_CRUD_API.postman_collection.json)

**json-коллекция PUT-запроса:**

```json
{
  "name": "{{base_url}}/api/tasks/3",
  "request": {
    "auth": {
      "type": "noauth"
    },
    "method": "DELETE",
    "header": [
      {
        "key": "Accept",
        "value": "application/json",
        "type": "text"
      }
    ],
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
  "response": []
}
```