#!/bin/bash

mkdir gaia-source-code
cd gaia-source-code

git clone git@github.com:gaia-app/gaia.git
cd gaia

if command -v docker-compose --version >/dev/null
then
  echo 'Docker compose is installed.'
else
  echo 'Docker compose is not installed, installing started.'
  sudo apt install docker-compose -y
  echo 'Docker compose is installed right now.'
fi

docker-compose up -d