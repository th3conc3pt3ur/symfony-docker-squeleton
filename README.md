# symfony-docker-squeleton

Create 2 docker container :
- www_docker_symfony : php:apache container with custom config in Dockerfile (include zsh , oh-my-zsh)
- db_docker_symfony: simple mariaDB container

Database is persist in `db-data` folder.

`App` folder contain symfony app.

`php/vhosts` folder contain apache config for symfony app


## Start the project :
```
docker-compose up -d
```
## Access shell
```
docker exec -ti www_docker_symfony /bin/zsh
```
App will be avaiable on : http://localhost:8741/
