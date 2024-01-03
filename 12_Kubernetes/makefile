IMAGE_NAME=kub-first-app
IMAGE_VERSION=latest
REPO_NAME=shah20/kub-first-app
DEPLOYMENT_NAME=first-app
NEXT_VERSION=2
# By default it would be same name as IMAGE_NAME in kubernetes
KUBE_CONTAINER_NAME=kub-first-app

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

update-image:
	docker build -t $(IMAGE_NAME):$(NEXT_VERSION) .

tag-image:
	docker tag $(IMAGE_NAME):$(IMAGE_VERSION) $(REPO_NAME):$(IMAGE_VERSION)

tag-next-version:
	docker tag $(IMAGE_NAME):$(NEXT_VERSION) $(REPO_NAME):$(NEXT_VERSION)

push-image:
	docker push $(REPO_NAME):$(IMAGE_VERSION)

push-next-image:
	docker push $(REPO_NAME):$(NEXT_VERSION)

push-next-version:
	docker push $(REPO_NAME):$(NEXT_VERSION)

create-deployment:
	kubectl create deployment $(DEPLOYMENT_NAME) --image=$(REPO_NAME):$(IMAGE_VERSION)

get-deployment:
	kubectl get deployments

create-service:
	kubectl expose deployment $(DEPLOYMENT_NAME) --type=LoadBalancer --port=8080

scale-deployment:
	kubectl scale deployment/$(DEPLOYMENT_NAME) --replicas=3

update-deployment:
	kubectl set image deployment/$(DEPLOYMENT_NAME) $(KUBE_CONTAINER_NAME)=$(REPO_NAME):$(NEXT_VERSION)

check-deployment:
	kubectl rollout status deployment/$(DEPLOYMENT_NAME)

rollback-deployment:
	kubectl rollout undo deploymen/$(DEPLOYMENT_NAME)

check-deployment-history:
	kubectl rollout history deployment/$(DEPLOYMENT_NAME)

check-detailed-history:
	kubectl rollout history deployment/$(DEPLOYMENT_NAME) --revision=2

rollback-to-specific-revision:
	kubectl rollout undo deployment/$(DEPLOYMENT_NAME) --to-revision=1