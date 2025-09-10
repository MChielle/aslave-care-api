# slave-care-api

- **Localhost infra**
- Criar docker container postgresql
  ```
  docker run -d --name postgresql -p 5432:5432 -e POSTGRES_PASSWORD=root -e POSTGRES_USER=root postgres
  ```
- Criar docker container redis
  ```
  docker run -d --name redis -p 6379:6379 redis
  ```
