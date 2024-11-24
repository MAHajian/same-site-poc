#!/bin/bash
sudo systemctl start docker
sudo docker build -t samesite . --rm
sudo docker run --name samesite -p 80:80 -v $PWD/another-site-mainsite.lab/:/var/www/app/another -v $PWD/same-site-mainsite.lab/:/var/www/app/main -v $PWD/xyz.subdomain.same-site-mainsite.lab/:/var/www/app/sub --rm samesite