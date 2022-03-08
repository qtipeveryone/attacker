#!/bin/sh

countContainer=$1

if [ -z "$countContainer" ]; then
    countContainer=30
fi

docker-compose up -d --scale attacker=$countContainer