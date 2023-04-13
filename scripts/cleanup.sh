#!/bin/bash

# removing the repository
rm -rf gaia-source-code

# stop and remove docker image
sudo docker stop $(sudo docker ps -q --filter ancestor=gaia && sudo docker ps -q --filter ancestor=gaia-db)
sudo docker rmi $(sudo docker images "gaia-db" -a -q) -f && sudo docker rmi $(sudo docker images "gaia" -a -q) -f
