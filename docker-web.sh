#!/bin/bash

source ./get-names.sh

if [ "$OSTYPE" = "msys" ]; then
    winpty docker exec -it $WP_CONTAINER_NAME bash
else
    docker exec -it $WP_CONTAINER_NAME bash
fi
