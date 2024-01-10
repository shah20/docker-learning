apply-users-deployment:
	kubectl apply -f=users-deployment.yaml

delete-users-deployment:
	kubectl delete -f=users-deployment.yaml

apply-user-service:
	kubectl apply -f=users-service.yaml

run-minikube-users-service:
	minikube service users-service

apply-auth:
	kubectl apply -f=auth-deployment.yaml -f=auth-service.yaml

apply-tasks-deployment:
	kubectl apply -f=tasks-deployment.yaml

delete-tasks-deployment:
	kubectl delete -f=tasks-deployment.yaml

apply-tasks-service:
	kubectl apply -f=tasks-service.yaml

apply-frontend-deployment:
	kubectl apply -f=frontend-deployment.yaml

delete-frontend-deployment:
	kubectl delete -f=frontend-deployment.yaml

apply-frontend-service:
	kubectl apply -f=frontend-service.yaml