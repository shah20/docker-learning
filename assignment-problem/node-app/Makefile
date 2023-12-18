IMAGE_ID?=
IMAGE_NAME=node-app
IMAGE_VERSION=1.0
REPO_IMAGE_NAME=shah20/node-hello-world
CONTAINER_NAME=basic-node-app

create-image:
	docker build .

run-app:
	docker run -p 3000:3000 $(IMAGE_ID)

run-app-with-name:
	docker run --name $(CONTAINER_NAME) -p 3000:3000 $(IMAGE_ID)

stop-app-with-name:
	docker stop $(CONTAINER_NAME)

remove-container-with-name:
	docker rm $(CONTAINER_NAME)

remove-image:
	docker rmi $(IMAGE_ID)

create-image-with-tag:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-app-with-tag-auto-remove:
	docker run --rm -p 3000:3000 --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

remove-image-with-tag:
	docker rmi $(IMAGE_NAME):$(IMAGE_VERSION)

rename-image:
	docker tag $(IMAGE_NAME):$(IMAGE_VERSION) $(REPO_IMAGE_NAME):$(IMAGE_VERSION)

push-image:
	docker push $(REPO_IMAGE_NAME):$(IMAGE_VERSION)

docker-login:
	docker login

docker-logout:
	docker logout

pull-image:
	docker pull $(REPO_IMAGE_NAME):$(IMAGE_VERSION)
