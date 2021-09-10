# README

## Setup

1. `docker compose build`
2. `docker compose up`
3. `docker compose exec web bin/rails db:setup`
4. `docker compose exec web bin/rails webpacker:install`
5. `docker compose exec web bin/rails active_storage:install`
6. `docker compose exec web bin/rails db:migrate`
7. `docker compose exec web bin/rails action_text:install`

## Run Specs
