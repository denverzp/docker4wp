## Docker4WP

Docker for Wordpress

### Usage
1. Clone repo in folder `.docker` inside project.
2. Go inside `.docker` folder and copy `.env.sample` to `.env` file. Edit `.env`.
3. Run `docker-run.sh`.

Wordpress site access on `http://localhost`. 

All tested on Windows 10 host, Docker Desktop v3.0.4.51218, HyperV. 

### Description

#### Containers:
- `web_server` - Wordpress container
- `db_server` - Database container
- `mailhog_server` - Mailhog for emails.
- `adminer` - DB management container

#### Default ports
- Web server - `http://localhost:80` (in `.env` file - `WEB_PORT`)
- DB server - `http://localhost:1306` (in `.env` file - `DB_PORT`)
- Mailhog - `http://localhost:8025` (in `.env` file - `MAILHOG_PORT`)
- Adminer - `http://localhost:8081` (in `.env` file - `DBADMIN_PORT`)

#### Custom domain

If need set some custom domain:
1. Set `APP_URL` in `.env` file - needed domain. For example `domain.test`.
2. In `hosts` file of the host system add line for domain `127.0.0.1 domain.test`.
3. Reload docker   
4. Now site available in browser on `http://domain.test`

#### Scripts
- `docker-run.sh` - run the containers
- `docker-stop.sh` - stop containers
- `docker-db.sh` - open terminal in `db_server` container
- `docker-web.sh` - open terminal in `web_server` container
- `docker-export-db.sh` - save DB dump to external file `compose/dbdump/dump.sql`
- `docker-import-db.sh` - import dump `compose/dbdump/dump.sql` to DB
