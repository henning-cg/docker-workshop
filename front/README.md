
Build the container

```
docker build -t front .
```

Run
```
docker run --name front -p 5000:80 front
```

Test locally

```
curl localhost:5000
```