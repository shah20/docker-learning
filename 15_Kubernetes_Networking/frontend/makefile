IMAGE_NAME=shah20/kub-demo-frontend
IMAGE_VERSION=latest

build-image:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

push-image:
	docker push $(IMAGE_NAME):$(IMAGE_VERSION)  

run-frontend:
	docker run -d -p 8090:80 --rm -d $(IMAGE_NAME):$(IMAGE_VERSION)