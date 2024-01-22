IMAGE_NAME=favourite-node
IMAGE_VERSION=latest
CONTAINER_NAME=favourites
CURRENT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
NETWORK_NAME=favourites-net
MONGO_DB_IMAGE_NAME=mongo
MONGO_DB_CONTAINER_NAME=mongodb

# mongo installation commands

tap-mongo:
	brew tap mongodb/brew

install-mongo:
	brew install mongodb-community@7.0

start-mongo:
	brew services start mongodb-community@7.0

stop-mongo:
	brew services stop mongodb-community@7.0

verify-mongo-running:
	ps aux | grep -v grep | grep mongod

connect-mongo:
	mongosh

# docker commands

build-image:
	docker build -t $(IMAGE_NAME) .

run-app-container:
	docker run -d --rm --name $(CONTAINER_NAME) -p 3000:3000 $(IMAGE_NAME)

stop-container:
	docker stop $(CONTAINER_NAME)

run-mongo-container:
	docker run -d --rm --name $(MONGO_DB_CONTAINER_NAME) -p 27017:27017 $(MONGO_DB_IMAGE_NAME)

inspect-mongodb-container:
	docker container inspect $(MONGO_DB_CONTAINER_NAME)

create-network:
	docker network create $(NETWORK_NAME)

# -p is not required as we dont need to access mongodb from outside the container
# container in same network can access each other using container name
run-mongodb-in-favourites-net:
	docker run -d --rm --name $(MONGO_DB_CONTAINER_NAME) --network $(NETWORK_NAME) $(MONGO_DB_IMAGE_NAME)

run-app-container-in-favourites-net:
	docker run -d --rm --name $(CONTAINER_NAME) --network $(NETWORK_NAME) -p 3000:3000 $(IMAGE_NAME)
