# docker nginx php-7.4 phalcon-4.1
## catatan
````
docker run -d -p 80:80 -v /Users/sofyan/Dev/php:/app --name dinosaurus nimdasx/nginx-php7-phalcon4
````
## build dan push ke github
````
docker build --tag ghcr.io/nimdasx/nginx-php7-phalcon4 .
docker push ghcr.io/nimdasx/nginx-php7-phalcon4
````
## build dan push ke docker hub
````
docker build --tag nimdasx/nginx-php7-phalcon4 .
docker push nimdasx/nginx-php7-phalcon4

docker buildx build --platform linux/amd64 --tag nimdasx/nginx-php7-phalcon4 --push .
````