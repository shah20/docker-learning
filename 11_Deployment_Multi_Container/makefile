BACKEND_IMAGE_NAME=goals-node
IMAGE_VERSION=latest
BACKEND_REPO_NAME=shah20/goals-node
FRONTEND_REPO_NAME=shah20/goals-react

build-backend:
	docker build -t $(BACKEND_IMAGE_NAME):$(IMAGE_VERSION) ./backend

tag-backend:
	docker tag $(BACKEND_IMAGE_NAME):$(IMAGE_VERSION) $(BACKEND_REPO_NAME):$(IMAGE_VERSION)

push-backend:
	docker push $(BACKEND_REPO_NAME):$(IMAGE_VERSION)

build-frontend:
	docker build -f frontend/Dockerfile.prod -t $(FRONTEND_REPO_NAME) ./frontend

push-frontend:
	docker push $(FRONTEND_REPO_NAME)

build-single-stage:
	docker build --target build -f frontend/Dockerfile.prod ./frontend