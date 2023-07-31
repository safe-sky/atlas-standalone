#!/bin/bash

# Load network related variables.
source ./env/network.env
# Load required postgres variables.
source ./env/postgres.env

# If 'stop' is supplied as argument, stop the environment.
if [ -n "$1" ]; then
    if [ "$1" == "stop" ]; then
        docker-compose stop
        exit 0;
    fi;
fi;

# Just start up the environment.
docker-compose start