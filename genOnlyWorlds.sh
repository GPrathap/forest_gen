#!/bin/bash

#check args
if [ "$#" -ne 4 ]
then
    echo "Generates random forests to evaluate path planning"
    echo "Usage: $0 <number of worlds to gen> <world side length> <tree density> <octomap res>"
    exit 1
fi

echo "generating worlds"
python genWorlds.py --num_worlds $1 --world_length $2 --tree_density $3 --high_res 0
