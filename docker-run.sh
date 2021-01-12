#!/bin/bash

source ./get-names.sh

DEBUG "###### Down dockers container #####"
docker-compose down

DEBUG "###### Up dockers container #####"
docker-compose build
if [ "$APP_ENV" == "prod" ]; then
  docker-compose up -d
else
  docker-compose up
fi
