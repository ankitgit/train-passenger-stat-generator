# Train-Passenger-Stat-Generator
Random generator for a train's passenger load in different compartment

# How to run
## running a fat jar locally
* Use gradle shadow target to generate the executable jar file, i.e.: gradle clean shadowJar.
* An executable jar can be found on build/libs/train-passenger-stat-generator-all.jar
* Run: java -jar train-passenger-stat-generator-all.jar -P application.properties
* Note: an example application.properties is located in main resources folder.
* Or: java -jar train-passenger-stat-generator-all.jar -P application.properties -B 0.0.0.0:9092 -V 1 -NC 3 -CC 100 -I 3000
* Note: If you want to override the default properties in application.properties you can use the flag -B for boot server, -V for vehicle id, -NC for number of compartment, -CC for compartment capacity, -I for interval in which stats to be generated.

## Running via docker image
* execute build.sh
* Run: docker run -d -e B=[boot server] -e V=[vehicle id] -e N=[number of compartment] -e CC=[compartment capacity] -e I=[interval in which stats to be generated] --name [name of the container] train-occupancy-example
* Note: The environment variables are completely optional
