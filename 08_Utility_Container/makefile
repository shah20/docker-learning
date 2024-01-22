IMAGE_NAME=node-util
CURRENT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

build-image:
	docker build -t $(IMAGE_NAME) .

run-npm-init:
	docker run -it --rm -v $(CURRENT_DIR):/app $(IMAGE_NAME) npm init

run-init:
	docker run -it --rm -v $(CURRENT_DIR):/app $(IMAGE_NAME) init

docker-compose-run-npm-init:
	docker-compose run --rm npm init