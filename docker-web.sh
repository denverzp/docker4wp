#!/bin/sh

container=$(grep -Po 'WP_CONTAINER_NAME=\K(.*)' ./.containerid)

if [[ "$OSTYPE" == "msys" ]]; then
    winpty docker exec -it ${container} bash
else
    docker exec -it ${container} bash
fi