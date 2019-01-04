#!/bin/bash
DIR=`PWD`'/..'
docker create --name mysql57 -p3306:3306 -e MYSQL_ROOT_PASSWORD="password" -v $DIR/mysql:/docker-entrypoint-initdb.d mysql:5.7 >> containers.list
docker create --name webserver -p 80:80 -v $DIR/apache:/usr/local/apache2/htdocs httpd >> containers.list
docker create --name nodeserver -p 8080:8080 -v $DIR/nodejs:/src -w /src -u node -it node sh -c "sleep 10 && node node_modules/nodemon/bin/nodemon server.js > /src/output.log" >> containers.list 
