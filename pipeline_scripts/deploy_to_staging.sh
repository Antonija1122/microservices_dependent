#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
kubectl apply -f k8s/namespaces/project1-stg.json
kubectl apply -f k8s/service1-cluster-service-ip.yaml --namespace=project1-stg
kubectl apply -f k8s/service1-deployment.yaml --namespace=project1-stg
kubectl apply -f k8s/service2-cluster-service-ip.yaml --namespace=project1-stg
kubectl apply -f k8s/service2-deployment.yaml  --namespace=project1-stg
kubectl apply -f k8s/ingress/ingress-service-project1-stg.yaml  --namespace=project1-stg

kubectl apply -f project2-stg.json
kubectl apply -f k8s/service1-cluster-service-ip.yaml --namespace=project2-stg
kubectl apply -f k8s/service1-deployment.yaml  --namespace=project2-stg
kubectl apply -f k8s/service2-cluster-service-ip.yaml  --namespace=project2-stg
kubectl apply -f k8s/service2-deployment.yaml  --namespace=project2-stg
kubectl apply -f k8s/ingress/ingress-service-project2-stg.yaml  --namespace=project2-stg
