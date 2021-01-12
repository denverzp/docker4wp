#!/bin/sh

container=$(grep -Po 'DB_CONTAINER_NAME=\K(.*)' ./.containerid)

if [[ "$OSTYPE" == "msys" ]]; then
    winpty docker exec -it ${container} bash
else
    docker exec -it ${container} bash
fi
