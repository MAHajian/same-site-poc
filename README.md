# Same Site POC
This is a simple project to work with `samesite` cookies. To make it up:
```
git clone https://github.com/MAHajian/same-site-poc.git
cd same-site-poc
sudo docker build -t samesite . --rm
sudo docker run --name samesite -p 80:80 -v $PWD/another-site-mainsite.lab/:/var/www/app/another -v $PWD/same-site-mainsite.lab/:/var/www/app/main -v $PWD/xyz.subdomain.same-site-mainsite.lab/:/var/www/app/sub --rm samesite
```
Alternative way. Run with docker-compose
```
git clone https://github.com/MAHajian/same-site-poc.git
cd same-site-poc
docker compose up -d
```
The session's attribute can be changed by modifying `index.php`:
```php
session_set_cookie_params([
    'samesite' => 'Lax'
]);
```
Then add the following lines into the `hosts` file:
```
127.0.0.1 same-site-mainsite.lab
127.0.0.1 xyz.subdomain.same-site-mainsite.lab
127.0.0.1 another-site-mainsite.lab
```

Method 2:

```
Add these lines to `hosts` file
```
```
127.0.0.1 same-site-mainsite.lab
127.0.0.1 xyz.subdomain.same-site-mainsite.lab
127.0.0.1 another-site-mainsite.lab
```
```shell
git clone https://github.com/MAHajian/same-site-poc.git
cd same-site-poc
sudo chmod +x start_docker.sh
./start_docker
```
Enjoy hacking :)
