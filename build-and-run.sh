#!/bin/sh
docker build -t runit-base -f runit-base/Containerfile runit-base
docker build -t runit-httpd -f runit-httpd/Containerfile runit-httpd

docker rm -f httpd
docker run --rm --name httpd -d -p 8080:80 runit-httpd
