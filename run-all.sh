cd front
docker build -t front:v1 .
cd ../back
docker build -t back:v1 -f Dockerfile.multi-stage .
cd ../proxy
docker build -t proxy:v1 .
cd ..
docker-compose up
