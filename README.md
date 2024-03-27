

# Laravel 8 app with Docker

The is about installing Laravel 8 application in docker using docker compose and docker file.






## Used Images/Tech

**PHP:** php:7.4-fpm-alpine

**Server:** nginx:stable-alpine

**DB:** mysql:5.7

**composer:** composer:2.5.7

## How to deploy the app

Clone the repo

```bash
git clone https://github.com/KFElahi2/Laravel8WithDocker.git
```

Go to the app directory

```bash
cd appDirectory
```

Copy .env.example to .env.

```bash
cp .env.example .env
```

Change DB credentials in .env. Credentials must be same as ./docker/env/mysql.env

```dotenv
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=forumDB
DB_USERNAME=forum
DB_PASSWORD=Forum@123
```
Build image and run container.

```bash
docker compose up -d --build server
```

Install dependencies

```bash
docker compose run --rm composer install
```

Migrate DB using artisan command

```bash
docker compose run --rm artisan migrate
```

Generate app key using artisan command

```bash
docker compose run --rm artisan key:generate
```

Stop running containers

```bash
docker compose down
```
