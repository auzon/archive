# remove manifest
kubectl delete -f ./foo-service.yaml

# remove the previous image
minikube image rm docker.io/library/foo-service:local

# build image (cwd must be in root, if not use correct path instead of `.`)
minikube image build -t foo-service:local .

# restart rollout
kubectl rollout restart -f ./foo-service.yaml
