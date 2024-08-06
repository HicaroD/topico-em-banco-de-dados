#!/bin/bash

IMAGE=tbd-img
CONTAINER=tbd-container

CONTAINER_COUNT=$(docker ps -q -a -f name=$CONTAINER | wc -l)

if [ $CONTAINER_COUNT == 0 ]; then
  echo "Container '$CONTAINER' does not exists, building one..."
  docker build . -f ./postgresql.Dockerfile -t $IMAGE
  docker run -d -p 5432:5432 --name $CONTAINER $IMAGE
else
  echo "Container '$CONTAINER' already exists, starting it..."
  docker container start $CONTAINER
fi
