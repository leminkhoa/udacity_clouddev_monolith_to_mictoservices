# Apply env variables and secrets
kubectl apply -f k8s-env/aws-secret.yaml
kubectl apply -f k8s-env/env-secret.yaml
kubectl apply -f k8s-env/env-configmap.yaml

# Deployments - Double check the Dockerhub image name and version in the deployment files
kubectl apply -f k8s-deployments/backend-feed-deployment.yaml
kubectl apply -f k8s-deployments/backend-user-deployment.yaml
kubectl apply -f k8s-deployments/frontend-deployment.yaml
kubectl apply -f k8s-deployments/reverseproxy-deployment.yaml

# Service
kubectl apply -f k8s-services/backend-feed-service.yaml
kubectl apply -f k8s-services/backend-user-service.yaml
kubectl apply -f k8s-services/frontend-service.yaml
kubectl apply -f k8s-services/reverseproxy-service.yaml
