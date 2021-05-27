#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
kubectl apply -f ./k8s/namespaces/project1-prod.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project1-prod
kubectl apply -f ./k8s/service1-deployment.yaml --namespace=project1-prod
kubectl apply -f ./k8s/service2-cluster-service-ip.yaml --namespace=project1-prod
kubectl apply -f ./k8s/service2-deployment.yaml  --namespace=project1-prod
kubectl apply -f ./k8s/ingress/ingress-service-project1-prod.yaml  --namespace=project1-prod

kubectl apply -f ./k8s/namespaces/project2-prod.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project2-prod
kubectl apply -f ./k8s/service1-deployment.yaml  --namespace=project2-prod
kubectl apply -f ./k8s/service2-cluster-service-ip.yaml  --namespace=project2-prod
kubectl apply -f ./k8s/service2-deployment.yaml  --namespace=project2-prod
kubectl apply -f ./k8s/ingress/ingress-service-project2-prod.yaml  --namespace=project2-prod
