#!/bin/bash

source ./get-names.sh

# dump database
DEBUG "###### Start dump DB #####"
if [ "$OSTYPE" = "msys" ]; then
    winpty docker exec -it $DB_CONTAINER_NAME bash -c "sh /usr/local/bin/dump-database.sh"
else
    docker exec -it $DB_CONTAINER_NAME bash -c "sh /usr/local/bin/dump-database.sh"
fi
DEBUG "###### Finished dump DB #####"
