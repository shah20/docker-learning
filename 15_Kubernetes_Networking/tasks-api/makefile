IMAGE_NAME=shah20/kub-demo-tasks
IMAGE_VERSION=latest

build-image:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

push-image:
	docker push $(IMAGE_NAME):$(IMAGE_VERSION)