IMAGE_ID?=
IMAGE_NAME=python-app
IMAGE_VERSION=1.0
CONTAINER_NAME=basic-python-app

create-image:
	docker build .

run-app:
	docker run -it $(IMAGE_ID)

run-app-with-name:
	docker run --name $(CONTAINER_NAME) -it $(IMAGE_ID)

stop-app-with-name:
	docker stop $(CONTAINER_NAME)

remove-container-with-name:
	docker rm $(CONTAINER_NAME)

remove-image:
	docker rmi $(IMAGE_ID)

create-image-with-tag:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-app-with-tag-auto-remove:
	docker run --rm -it --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

remove-image-with-tag:
	docker rmi $(IMAGE_NAME):$(IMAGE_VERSION)