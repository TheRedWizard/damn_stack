#!/bin/bash
#stop all docker containers to avoid conflicts
#docker stop $(docker ps -aq)

#stop my containers
cat containers.list | xargs docker stop 

#destroy containers created by create.sh
cat containers.list | xargs docker rm
rm containers.list
