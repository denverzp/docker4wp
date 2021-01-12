#!/bin/bash

source ./.env
source ./compose/scripts/b-log.sh


if [ ! -f ./.env ]; then
	FATAL "File .env is not found. You must have a .env file in this directory"
	exit 1
fi


if [ ! -f ./.containerid ]; then
	DEBUG "File .containerid is not found in this directory"
	DEBUG "Create .containerid file in this directory"
	touch .containerid
	printf "DB_CONTAINER_NAME=\nWP_CONTAINER_NAME=\n" >.containerid
fi

if grep "DB_CONTAINER_NAME\|WP_CONTAINER_NAME" ./.containerid; then
	project_name=$APP_NAME
  commit=$APP_ENV

	hash=$project_name-$commit

	sed -i 's/^DB_CONTAINER_NAME=.*/DB_CONTAINER_NAME='$hash-db'/' ./.containerid
	export DB_CONTAINER_NAME=$hash-db
	sed -i 's/^WP_CONTAINER_NAME=.*/WP_CONTAINER_NAME='$hash-web'/' ./.containerid
	export WP_CONTAINER_NAME=$hash-web
else
	FATAL "The .containerid file has corrupted."
	rm -i ./.containerid
fi

DEBUG "###### Down dockers container #####"
docker-compose down
