# dockerize-ambari

```
docker compose up --build
```

## dockerize-apache-ds
Let's run ApacheDS on a container


```
docker run -it --net=host --name=apache-ds -v dockerize-apache-ds_apache-ds-data:/opt/apacheds-2.0.0.AM26 apache-ds /bin/bash
```
