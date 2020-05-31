#!/bin/bash 

# docker ps -f ancestor=$1 --format '{{.Names}}' | wc -l > last_scale.txt
docker ps -f ancestor=$1 --format '{{.Names}}' | wc -l