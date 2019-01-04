#!/bin/bash
./clean.sh
./destroy.sh
./init.sh
./create.sh
./run.sh

#this is just to bounce the node server after mysql starts up, you can remove everything below
#but if localhost:8080 isn't working, touch ../nodejs/server.js to get nodemon to restart it 
sleep 13
touch ../nodejs/server.js
sleep 2
echo "DAMN READY"
