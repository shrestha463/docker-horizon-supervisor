up-build:
	docker-compose up -d --build

up:
	docker-compose up -d

down:
	docker-compose down

open:
	xdg-open http://localhost

tinker:
	docker-compose run horizonapp php artisan tinker

install-dependency:
	docker-compose run horizonapp composer update

install-horizon:
	docker-compose run --rm --no-deps horizonapp composer require laravel/horizon
	docker-compose run --rm --no-deps horizonapp php artisan horizon:install

start-horizon:
	docker-compose exec -d horizonapp php artisan horizon

stop-horizon:
	docker-compose exec -d horizonapp php artisan horizon:terminate

pause-horizon:
	docker-compose exec -d horizonapp php artisan horizon:pause

continue-horizon:
	docker-compose exec -d horizonapp php artisan horizon:continue

create-job:
	docker-compose run --rm --no-deps horizonapp php artisan make:job ProcessReport

ssh:
	docker-compose exec horizonapp bash

supervisor-horizon:
	docker-compose exec -d horizonapp php artisan horizon:terminate
	docker-compose exec -u root -d horizonapp service supervisor start
	docker-compose exec -u root -d horizonapp supervisorctl reread
	docker-compose exec -u root -d horizonapp supervisorctl update
	docker-compose exec -u root -d horizonapp supervisorctl start horizon

supervisor-horizon-stop:
	docker-compose exec -u root -d horizonapp supervisorctl stop horizon
