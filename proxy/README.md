
Build the container
```
docker build -t proxy .
```

Run the container

```
docker run --name proxy --link back:back --link front:front -p 8000:80 proxy
```

Test locally

````
curl http://localhost:8000
curl http://localhost:8000/api


