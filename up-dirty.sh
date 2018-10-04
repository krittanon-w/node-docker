#!/bin/bash


# init
NAME="node-docker"


# main
if [[ $@ == "-prod" ]]; then
    ENV="production"
else
    ENV="development"
fi

echo "build $NAME in $ENV mode"

docker rm -f $NAME
docker build -t $NAME .
docker run -d --name "$NAME" -p 3000:3000 -e NODE_ENV=$ENV $NAME:latest
