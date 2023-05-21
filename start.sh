#!/bin/bash

# get directory of script
DIR="$(cd "$(dirname "$0")" && pwd)"

PORT=8080

# make sure local volume exists
PERSISTENT=$DIR"/persistent"
mkdir -p $PERSISTENT 

sudo nohup $DIR"/gotty" -p $PORT -w docker run -it --rm -v $PERSISTENT:"/persistent" busybox &
