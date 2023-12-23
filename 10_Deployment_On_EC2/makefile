IMAGE_NAME=node-dep-example
IMAGE_VERSION=1.0.0
CONTAINER_NAME=node-dep
REPO_NAME=shah20/node-example-one

build-image:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

run-container:
	docker run -d --rm -p 80:80 --name $(CONTAINER_NAME) $(IMAGE_NAME):$(IMAGE_VERSION)

add-tag:
	docker tag $(IMAGE_NAME):$(IMAGE_VERSION) shah20/node-example-one

push-image:
	docker push $(REPO_NAME)

change-key-file-permission:
	chmod 400 shah20-key-pair.pem

connect-ec2:
	ssh -i "shah20-key-pair.pem" ec2-user@ec2-35-172-134-221.compute-1.amazonaws.com