AWS_REGION=us-east-1
EKS_CLUSTER_NAME=shah20-eks

update-kubectl:
	aws eks --region $(AWS_REGION) update-kubeconfig --name $(EKS_CLUSTER_NAME)

apply-all:
	kubectl apply -f=./kubernetes/users.yaml -f=./kubernetes/auth.yaml

delete-all:
	kubectl delete -f=./kubernetes/users.yaml -f=./kubernetes/auth.yaml

connect-pod:
	exec kubectl exec -i -t -n default users-deployment-5bc8f74cf-6r8x2 -c users-api -- sh -c "clear; (bash || ash || sh)"

get-pod-logs:
	kubectl logs -n default <pod_name>

install-efs-csi-driver:
	kubectl apply -k "github.com/kubernetes-sigs/aws-efs-csi-driver/deploy/kubernetes/overlays/stable/?ref=release-1.7"