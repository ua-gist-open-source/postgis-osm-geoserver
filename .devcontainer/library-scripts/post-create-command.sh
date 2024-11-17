#!/bin/bash


docker compose up -d

sleep 5

docker run  --network gist604b -e STATE=hawaii -e DATABASE=hawaii aaryno/populate-docker-geo populate-postgis.sh
