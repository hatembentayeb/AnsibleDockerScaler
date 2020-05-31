#!/bin/bash

# I assume that the scale variable is global
scale=$1

# I assume that i know the names of the containers ( i'am deploying a mongo_db :D)
for i in $(seq $scale) 
do
#echo $(docker inspect mongo_$i | jq ".[].NetworkSettings.Networks.digipages_net.IPAddress" -r) > IP_$i.txt
#export "IP_$i"=$(docker inspect mongo_$i | jq ".[].NetworkSettings.Networks.digipages_net.IPAddress" -r)
docker inspect mongo_$i | jq ".[].NetworkSettings.Networks.network.IPAddress" -r
done



# docker inspect 2acc6758883a | jq ".[].Name" -r | tr -d "/" 
 