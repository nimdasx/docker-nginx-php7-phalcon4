# docker nginx php74
isinya nginx php7.4 driver sqlsrv microsoft sql server
webdevops/php-nginx gak ono versi arm
## catatan pribadi... abaikan ya
````
<<<<<<< HEAD
docker run -d -p 80:80 -v /Users/sofyan/Dev/php:/app --name nginx-php7-phalcon4qwe nimdasx/nginx-php7-phalcon4
````
## build dan push ke github :
````
docker build --tag ghcr.io/nimdasx/nginx-php7-phalcon4 .
docker push ghcr.io/nimdasx/nginx-php7-phalcon4
=======
docker build --tag nimdasx/sf-nginx-php74 .
docker push nimdasx/sf-nginx-php74
docker run -d -p 80:80 -v /Users/sofyan/Dev/php:/app --name sf-nginx-php74 nimdasx/sf-nginx-php74
docker rm -f sf-nginx-php74
>>>>>>> d0c096fb4c24eb8c84ed1ca321d5f3db666453bd
````
## build dan push ke docker hub :
````
<<<<<<< HEAD
docker build --tag nimdasx/nginx-php7-phalcon4 .
docker push nimdasx/nginx-php7-phalcon4
````
=======
docker build --tag ghcr.io/nimdasx/docker-nginx-php7-phalcon4 .
docker push ghcr.io/nimdasx/docker-nginx-php7-phalcon4
````
>>>>>>> d0c096fb4c24eb8c84ed1ca321d5f3db666453bd
