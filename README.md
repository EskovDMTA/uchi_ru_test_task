# Тестовое задания на вакансию "Стажёр Backend Developer в команду GR" [![uchi.ru](./uchi_ru_logo.svg)](https://uchi.ru/)

Задание выполненно по [техническому заданию ](https://github.com/uchiru/internship-api-schema-task)

### Технологии

- Ruby on Rails
    - Grape
    - Minitest
    - Rubocop
- Docker
- PostgreSQL

## Установка и запуск проекта

1. Склонируйте репозиторий:

   ```sh
   git clone git@github.com:EskovDMTA/uchi_ru_test_task.git
   cd uchi_ru_test_task

2. Для настройки переменных окружения необходимо создать файл `.env` в корне проекта. Этот файл будет содержать
   конфигурации, необходимые для работы приложения, включая подключение к базе данных.
Создайте файл `.env` с использованием любого текстового редактора и добавьте в него следующие строки:

    ```plaintext
    DATABASE_HOST=database
    DATABASE_USERNAME=postgres
    DATABASE_PASSWORD=postgres


3. Запустите проект с помощью Docker:
   ```sh
   docker-compose up

После запуска приложение будет доступно по адресу http://localhost:3000.

## API Документация

API спецификация доступна по адресу  http://localhost:3000/api-docs

В проекте реализован API, позволяющий управлять ресурсами `students` и `classes`. Ниже представлена документация к API.

### Endpoints

#### Студенты

- `POST /students` - регистрация нового студента.
- `DELETE /students/{user_id}` - удаление студента по его ID.

#### Классы

- `GET /schools/{school_id}/classes` - получение списка классов определенной школы.
- `GET /schools/{school_id}/classes/{class_id}/students` - получение списка студентов определенного класса.
