#!/bin/bash

# copied from here: https://stackoverflow.com/questions/29600369/starting-and-populating-a-postgres-container-in-docker
# this script is run when the docker container is built
# it imports the base database structure and create the database for the tests

DATABASE_NAME="openedub"

echo "*** CREATING DATABASE ***"

# check if db exists, iif yes do nothing, otherwise import db

db_exists=$( psql -U postgres -t -c "SELECT datname FROM pg_catalog.pg_database WHERE datname = '$DATABASE_NAME';" )
if [ -z "$db_exists" ]
then
      echo "\$var is empty"
      cp /docker-entrypoint-initdb.d/sito_project.sql /var/lib/postgresql/data/edudata/sito_project.sql
      createdb $DATABASE_NAME -U postgres
      psql -U postgres -d $DATABASE_NAME -c "GRANT ALL PRIVILEGES ON DATABASE "$DATABASE_NAME" TO postgres;"
      psql  -U postgres  -d $DATABASE_NAME < /var/lib/postgresql/data/edudata/sito_project.sql
else
      echo "DB $db_exists exists, do nothing"
fi


echo "*** DATABASE CREATED! ***"