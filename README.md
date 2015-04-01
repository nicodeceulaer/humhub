Docker-compose config for Upsource
===================================
Deployment Upsource using docker.

REQUIREMENTS
------------

Docker and Docker compose

INSTALLATION
------------
1. Install docker [more](https://docs.docker.com/installation/#installation)
2. Add user group "docker":
~~~
sudo usermod -a -G docker $USER
~~~
3. Install docker compose:
~~~
sudo curl -L https://github.com/docker/compose/releases/download/1.1.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
~~~
4. Clone this repository.
~~~
git clone http://github.com/serieznyi/docker-humhub.git
~~~
5. Add yours host name in /etc/hosts
6. Add proxy from your host nginx (or apache) to docker nginx

NGINX
----
~~~
server {
    server_name your_host_name;
    location / {
        proxy_set_header Host $http_host;
        proxy_pass http://127.0.0.1:8096;
    }
}
~~~
APACHE
------------
~~~
<VirtualHost *:80>
    ServerName your_host_name
    ProxyPass / http://127.0.0.1:8096/
    ProxyPreserveHost On

    ErrorLog /var/log/apache2/humhub.error.log
    CustomLog /var/log/apache2/humhub.access.log common
    RewriteLogLevel 3
    RewriteLog "/var/log/apache2/humhub.rewrite.log"
</VirtualHost>
~~~
USING
------
Start docker containers
~~~
docker-compose up -d
~~~
NOTE: for composer use `--prefer-dist` options, git not installed in php container.

After start check http://127.0.0.1:8096
