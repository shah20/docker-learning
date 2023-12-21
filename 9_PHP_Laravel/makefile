# 1
create-composer-project:
	docker-compose run --rm composer create-project --prefer-dist laravel/laravel .

run-server-php-mysql:
	docker-compose up -d server php mysql

# 2
run-server:
	docker-compose up -d --build server

# 3
run-artisan:
	docker-compose run --rm artisan migrate
