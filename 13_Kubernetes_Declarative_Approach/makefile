# To apply changes after editing the deployment.yaml file, run the following command again
# This would create and update the deployment
create-deployment:
	kubectl apply -f=deployment.yaml

create-service:
	kubectl apply -f=service.yaml

create-multiple-resources:
	kubectl apply -f=deployment.yaml -f=service.yaml

expose-service:
	minikube service backend

delete-deployment:
	kubectl delete -f=deployment.yaml

delete-service:
	kubectl delete -f=service.yaml

delete-multiple-resources:
	kubectl delete -f=deployment.yaml -f=service.yaml

create-multiple-resources:
	kubectl apply -f=master-deployment.yaml

delete-by-label:
	kubectl delete deployments,services -l group=example