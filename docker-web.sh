#!/bin/sh

CONTAINER=$(grep -Po 'WP_CONTAINER_NAME=\K(.*)' ./.containerid)

if [ "$OSTYPE" = "msys" ]; then
    winpty docker exec -it ${CONTAINER} bash
else
    docker exec -it ${CONTAINER} bash
fi
