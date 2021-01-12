#!/bin/bash

source ./get-names.sh

# import database
DEBUG "###### Start import DB dump #####"
if [ "$OSTYPE" = "msys" ]; then
    winpty docker exec -it $DB_CONTAINER_NAME bash -c "sh /usr/local/bin/import-database.sh"
else
    docker exec -it $DB_CONTAINER_NAME bash -c "sh /usr/local/bin/import-database.sh"
fi
DEBUG "###### Finished import DB dump #####"
