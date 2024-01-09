IMAGE_NAME=shah20/story
IMAGE_VERSION=2

run-docker-compose:
	docker compose up -d --build

stop-docker-compose:
	docker compose down

build-image:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

push-image:
	docker push $(IMAGE_NAME):$(IMAGE_VERSION)

apply:
	kubectl apply -f=deployment.yaml -f=service.yaml

apply-deployment:
	kubectl apply -f=deployment.yaml

expose-service:
	minikube service story-service

# First create a hostPath PV and then PVC
apply-host-pv:
	kubectl apply -f=host-pv.yaml

apply-host-pvc:
	kubectl apply -f=host-pvc.yaml