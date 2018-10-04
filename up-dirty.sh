#!/bin/bash


# init
NAME="db-dis-service"


# main
if [[ $@ == "-prod" ]]; then
    ENV="production"
else
    ENV="development"
fi

echo "build $NAME in $ENV mode"

docker rm -f $NAME
docker build -t $NAME .
docker run -d --name "$NAME" -e NODE_ENV=$ENV $NAME:latest
