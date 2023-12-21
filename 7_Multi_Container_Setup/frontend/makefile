IMAGE_NAME=goals-frontend-node
IMAGE_VERSION=latest
CONTAINER_NAME=goals-frontend

CURRENT_DIR=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SOURCE_DIR=$(CURRENT_DIR)/src

NETWORK_NAME=goals-net

PORT=8000

build-frontend:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-frontend:
	docker run -d --rm -it -p $(PORT):$(PORT) -e PORT=$(PORT) -v $(SOURCE_DIR):/app/src --network $(NETWORK_NAME) --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

stop-frontend:
	docker stop $(CONTAINER_NAME)