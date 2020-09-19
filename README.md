## This work based on [this](https://github.com/ethz-asl/forest_gen) in which removed some dependencies and make it lightweight which does support Gazabo 9 
# forest_gen
Generates randomized Poisson forests to use for UAV collision avoidance evaluations.

Input: map size and density
Output: Gazebo world file and Octomap and point cloud


## Installation Requirements
* ROS melodic 
* Install https://github.com/GPrathap/sim_gazebo_plugins.git

## Package Contents
* 10 pre-generated forest maps, 10 meters by 10 meters by 10 meters, with a density of 0.2 trees/square meter. (worlds)
* 1 pre-generated large map, 50 meters by 50 meters, with a density of 0.1 trees/square meter. (big_worlds)
* Royalty-free tree models, created by [Miedevalworlds](https://www.turbosquid.com/3d-models/free-firtree-3d-model/480733)
* Generation script to create environments of any size and tree density.
* Start and end points used for planning evaluation in [1], as a CSV.

![image](https://user-images.githubusercontent.com/5616392/27187849-97ec9a00-51ec-11e7-890c-b4c6d7290a4f.png)

## Planning Evaluations
`start_and_end.csv` contains 900 free start and end points, used for the planning evaluations in [1]. All points are at least 4 meters apart and both start and goal are free space, given a bounding box of 1.2 meters by 1.2 meters by 1.0 meters. The actual bounding box used for path evaluations was 0.2 meters smaller; 1.0 meters by 1.0 meters by 0.8 meters.

## Generating New Environments
Use the following shell script to generate new worlds. 
```
./genForests.sh <number of worlds to gen> <world side length> <tree density> <octomap res>
./genForests.sh 1 10 0.2 0.2
```
