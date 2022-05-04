# README

Sample real-time, online forum built with Rails 6.1, Webpacker, Trix, Redis, and Postgres. Uses Hotwire for real-time forum post creation, editing, and deletion.

## Prerequisites

### Clone repository

```bash
git clone git@github.com:nbolser/hotwire-forum.git
```
### Build containers, install dependencies, and setup data store

Run the following commands to create image, install Rails things, and setup the database

```bash
docker compose build
docker compose run web rails webpacker:install
docker compose run web rails action_text:install
docker compose run web rails active_storage:install
docker compose run web rails db:setup
```

### Start the Rails server

```bash
docker compose up
```

Visit the site with the URL http://localhost:3000

## Testing
```bash
docker compose run web rspec
```
