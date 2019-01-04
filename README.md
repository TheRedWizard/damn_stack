# damn_stack

FROM OSX / Linux / Cygwin

to use, cd to docker file
run ./go.sh
in browser look at
apache
http://localhost:80
nodejs
http://localhost:8080
mysql
run connect_to_db.sh


modify files in nodejs folder and docker will auto-update from nodemon
replace sql file in /mysql to start up db with existing data (mysqldump is useful here but make sure you add the create database XXX and use XXX commands)

docker commands
init.sh (install a bunch of stuff for nodejs)
create.sh (make the images)
run.sh (start the containers from the images)
stop.sh (stop the containers)
destroy.sh (delete the images)
clean.sh (remove the nodejs stuff)
go.sh (calls destroy.sh, create.sh. run.sh)

containers.list is a list of the docker containers used, the shell commands read and write to this to determine what containers to start / stop / destroy

