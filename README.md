# Laravel Horizon with Docker and supervisor
This is an example for laravel horizon using docker.
# How to use?
Clone this repository.
```
git clone https://github.com/ramonov/docker-horizon-supervisor.git
```
Copy env configuration file.
```
cp code/.env.example code/.env
```
Make sure you have been install docker and docker-compose. Then run this command to create all necessary containers
```
make up-build 
```
Install dependencies for laravel
```
make install-dependency
```
Check laravel status from browser and generate key for laravel config.
```
make open
```
Install laravel Horizon and after command run completely check for horizon dashboard page at browser.
```
make install-horizon
```
Start Supervisor service and let supervisor daemon read the config ie. ./build/supervisor/conf.d/horizon.conf. lastly start horizon with supervisor service. Horizon dashboard shall show active status
```
make supervisor-horizon
```
