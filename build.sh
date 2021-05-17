#!/bin/bash

cp -r ./tomcat/dbsign/* ./volumes/dbsign/
mkdir ./volumes/dbsign/logs
rm ./volumes/database/README.md

docker-compose -p "dbsign" build --no-cache
docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
