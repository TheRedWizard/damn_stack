#!/bin/bash
db=example
did=`docker ps | grep mysql | awk '{print $1}'`
docker exec -it $did sh -c "mysql -ppassword $db"
