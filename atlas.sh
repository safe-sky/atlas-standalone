#!/bin/bash

# Load network related variables.
source ./env/network.env
# Load required postgres variables.
source ./env/postgres.env

# If 'down' is supplied as argument, shut down the environment.
if [ -n "$1" ]; then
    if [ "$1" == "down" ]; then
        docker-compose down
        exit 0;
    fi;
fi;

# Start the environment.
docker-compose up -d

# Subtract the admin token from the atlas-logs.
TOKEN=$(docker-compose logs atlas-dev | head -n 1 | sed -e 's/.*token=\(.*\) expires.*/\1/')

# Import a demo Aerodrome using the subtracted token.
./setup-aerodrome.sh $TOKEN