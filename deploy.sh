#ingress-service-project1.yaml  
#ingress-service-project2.yaml  
#service1-cluster-service-ip.yaml  
#service1-deployment.yaml  
#service2-cluster-service-ip.yaml  
#service2-deployment.yaml


#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
kubectl apply -f app1_namespace.json
kubectl apply -f k8s/service1-cluster-service-ip.yaml --namespace=project1
kubectl apply -f k8s/service1-deployment.yaml --namespace=project1
kubectl apply -f k8s/service2-cluster-service-ip.yaml --namespace=project1
kubectl apply -f k8s/service2-deployment.yaml  --namespace=project1
kubectl apply -f k8s/ingress-service-project1.yaml  --namespace=project1

kubectl apply -f app2_namespace.json
kubectl apply -f k8s/service1-cluster-service-ip.yaml --namespace=project2
kubectl apply -f k8s/service1-deployment.yaml  --namespace=project2
kubectl apply -f k8s/service2-cluster-service-ip.yaml  --namespace=project2
kubectl apply -f k8s/service2-deployment.yaml  --namespace=project2
kubectl apply -f k8s/ingress-service-project2.yaml  --namespace=project2
