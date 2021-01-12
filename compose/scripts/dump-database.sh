#!/bin/bash

DUMP_FILE=/var/lib/dbdump/dump.sql

mysqldump --no-tablespaces -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE > $DUMP_FILE
