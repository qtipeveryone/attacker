#!/bin/sh

countContainer=$1

if [ -z "$countContainer" ]; then
    countContainer=10
fi

docker-compose up -d --scale attacker=$countContainer
