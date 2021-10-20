# Spring Boot app & Postgresql & Docker compose

Buid java app

`mvn clean package`

containerize app

```
docker build -t back .
```

To run the app the database should be up and running on a container called 'postgres'

```
docker run --link postgres:postgres --name back -p 8080:8080 back
```

test it
```
curl localhost:8080
```

You should get as a response:
```
[{"id":1,"name":"A"},{"id":2,"name":"B"},{"id":3,"name":"C"}]
```

