cd front
docker build -t front .
cd ../back
mvn package
docker build -t back .
cd ../proxy
docker build -t proxy .
cd ..
docker-compose up