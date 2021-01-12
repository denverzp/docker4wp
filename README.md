
### Usage
1. Clone repo in folder `.docker` inside project.
2. Go inside and copy `.env.sample` to `.env` file. Edit `.env`.
3. Run `docker-run.sh`.

Wordpress site access on `localhost:8081`.

### Description
Containers:
- `web_server` - Wordpress container
- `db_server` - Database container
- `mailhog_server` - Mailhog for emails.
- `adminer` - DB management container

If need use external DB client - `db_server` access available on external port 1306.

### Scripts
- `docker-run.sh` - run the containers
- `docker-stop.sh` - stop containers
- `docker-db.sh` - open terminal in `db_server` container
- `docker-web.sh` - open terminal in `web_server` container
