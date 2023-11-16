#! /bin/sh
echo "running mongo container"
docker run -d -p 27017:27017 mongo:6.0 --name comments-mongo
cd ../comments/
echo "running ms"
mvn springboot:run
cd ../comments-ui/
echo "running npm init"
npm i
echo "running npm start"
npm start
