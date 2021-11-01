cd front
docker build -t front .
cd ../back
docker build -t back -f Dockerfile.multi-stage .
cd ../proxy
docker build -t proxy .
cd ..
docker-compose up
