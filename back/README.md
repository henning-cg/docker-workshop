# Spring Boot app & Postgresql & Docker compose

You can run the app in local, it works on JDK 11

`mvn spring-boot:run`

By running from the *back* folder, it uses the folder application.properties instead of the one in src/main/resources to override the location of postgres (uses localhost:5432 when running in local)

Also it points to banner.txt to showcase externalize configuration in effect.


To build the container you can:
- Build the java app locally and use Dockerfile 
- Use a multi stage Dockerfile so build is performed inside the container


### option 1. Build local
Buid java app

`mvn clean package`

containerize app

```
docker build -t back .
```

### option 2. Build with multi stage
```
docker build -t back -f Dockerfile.multi-stage .
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

