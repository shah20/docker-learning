IMAGE_NAME=goals-backend-node
IMAGE_VERSION=latest

CONTAINER_NAME=goals-backend

CURRENT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

NETWORK_NAME=goals-net

MONGO_DB_IMAGE_NAME=mongo
MONGO_DB_CONTAINER_NAME=mongodb
MONGO_DB_VOLUME_NAME=mongodb

MONGO_DB_HOST=$(MONGO_DB_CONTAINER_NAME)
MONGO_DB_PORT=27017
MONGO_DB_USERNAME=sarada
MONGO_DB_PASSWORD=sarada

BACKEND_PORT=80

create-network:
	docker network create $(NETWORK_NAME)

run-mongodb:
	docker run -d --rm --network $(NETWORK_NAME) -e MONGO_INITDB_ROOT_USERNAME=$(MONGO_DB_USERNAME) -e MONGO_INITDB_ROOT_PASSWORD=$(MONGO_DB_PASSWORD) -v $(MONGO_DB_VOLUME_NAME):/data/db --name $(MONGO_DB_CONTAINER_NAME) $(MONGO_DB_IMAGE_NAME)

stop-mongodb:
	docker stop mongodb

build-backend:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-backend:
	docker run -d --rm -p $(BACKEND_PORT):$(BACKEND_PORT) -e PORT=$(BACKEND_PORT) -e MONGO_DB_HOST=$(MONGO_DB_HOST) -e MONGO_DB_PORT=$(MONGO_DB_PORT) -e MONGO_DB_USERNAME=$(MONGO_DB_USERNAME) -e MONGO_DB_PASSWORD=$(MONGO_DB_PASSWORD) --network $(NETWORK_NAME) -v $(CURRENT_DIR):/app -v logs:/app/logs -v /app/node_modules --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

stop-backend:
	docker stop $(CONTAINER_NAME)
