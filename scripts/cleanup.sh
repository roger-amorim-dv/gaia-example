#!/bin/bash

# removing the repository
rm -rf gaia-source-code

# stop and remove docker image
docker stop $(docker ps -q --filter ancestor=gaia && docker ps -q --filter ancestor=gaia-db)
docker rmi $(docker images "gaia-db" -a -q) -f && docker rmi $(docker images "gaia" -a -q) -f
