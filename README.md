# Running the container

```
version: '3.1'

services:
  postgres:
    image: postgres:latest
    environment:
      POSTGRES_USER: myuser
      POSTGRES_PASSWORD: mypassword
      POSTGRES_DB: mydb
    volumes:
      - postgres-data:/var/lib/postgresql/data

  pgdump:
    image: bronkopopovic/pgdump:latest
    environment:
      DB_HOST: postgres
      DB_PORT: 5432
      DB_USER: myuser
      DB_PASSWORD: mypassword
      DB_NAME: mydb
      DUMP_INTERVAL: 3600
      DUMP_DIR: /dumps
      RETENTION_DAYS: 30
    volumes:
      - ./dumps:/dumps

volumes:
  postgres-data:
```
