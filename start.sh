#!/bin/bash

# get directory of script
DIR="$(cd "$(dirname "$0")" && pwd)"

PORT=8080

sudo nohup $DIR"/gotty" -p $PORT -w docker run -it --rm -v $DIR"/data":/data busybox &
