#!/bin/bash
# This script imports database dump from /website/.docker/compose/dbdump/dump.sql to the container
DUMP_FILE=/var/lib/dbdump/dump.sql

if [ -f "$DUMP_FILE" ]; then
    mysql -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < $DUMP_FILE
fi
