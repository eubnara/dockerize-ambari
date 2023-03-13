# dockerize-ambari

```
$docker compose up --build --no-recreate



# clean way
$ docker compose down
# remove related volumes if necessary
$ docker compose up --build --no-cache
```



## enable kerberos

![configure-kerberos-1](images/configure-kerberos-1.png)
![configure-kerberos-2](images/configure-kerberos-2.png)


```
KDC hosts: apache-ds.example.com:60088
Realm name: EXAMPLE.COM
LDAP url: ldaps://apache-ds.example.com:10636
Container DN: ou=services,dc=example,dc=com
Domains: `.example.com,example.com`
```
```
Kadmin host: apache-ds.example.com:60088
Admin principal: `uid=admin,ou=system`
Admin password: `secret`
```
