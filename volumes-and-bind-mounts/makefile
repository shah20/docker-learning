IMAGE_NAME=feedback-node
IMAGE_VERSION=latest
CONTAINER_NAME=feedback-app
CURRENT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

build-image:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-container:
	docker run -p 3000:80 -d --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

run-container-with-named-volume:
	docker run -p 3000:80 -d --rm --name $(CONTAINER_NAME) -v feedback:/app/feedback $(IMAGE_NAME)

run-container-with-named-volume-bind-mount:
	docker run -p 3000:80 -d --rm --name $(CONTAINER_NAME) -v feedback:/app/feedback -v "$(CURRENT_DIR):/app" -v /app/node_modules $(IMAGE_NAME)

run-container-with-env-arg:
	docker run -p 3000:8000 --env PORT=8000 -d --rm --name $(CONTAINER_NAME) -v feedback:/app/feedback -v "$(CURRENT_DIR):/app" -v /app/node_modules $(IMAGE_NAME)

run-container-with-env-file:
	docker run -p 3000:8000 --env-file .env -d --rm --name $(CONTAINER_NAME) -v feedback:/app/feedback -v "$(CURRENT_DIR):/app" -v /app/node_modules $(IMAGE_NAME)

run-container-with-named-volume-readonly-bind-mount:
	docker run -p 3000:80 -d --rm --name $(CONTAINER_NAME) -v feedback:/app/feedback -v "$(CURRENT_DIR):/app:ro" -v /app/temp -v /app/node_modules $(IMAGE_NAME)

attach-shell:
	docker exec -it $(CONTAINER_NAME) bash

stop-container:
	docker stop $(CONTAINER_NAME)