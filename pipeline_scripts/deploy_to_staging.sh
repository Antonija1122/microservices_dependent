#projekti, ista stvar bi bila za razlicite env npr. --namespace=project1-dev
kubectl apply -f ./k8s/namespaces/project1-stg.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project1-stg
kubectl apply -f ./k8s/service1-deployment.yaml --namespace=project1-stg
kubectl apply -f ./k8s/service2-cluster-service-ip.yaml --namespace=project1-stg
kubectl apply -f ./k8s/service2-deployment.yaml  --namespace=project1-stg
kubectl apply -f ./k8s/ingress/ingress-service-project1-stg.yaml  --namespace=project1-stg

kubectl apply -f ./k8s/namespaces/project2-stg.json
kubectl apply -f ./k8s/service1-cluster-service-ip.yaml --namespace=project2-stg
kubectl apply -f ./k8s/service1-deployment.yaml  --namespace=project2-stg
kubectl apply -f ./k8s/service2-cluster-service-ip.yaml  --namespace=project2-stg
kubectl apply -f ./k8s/service2-deployment.yaml  --namespace=project2-stg
kubectl apply -f ./k8s/ingress/ingress-service-project2-stg.yaml  --namespace=project2-stg

#impertive set image
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project1-stg
kubectl set image deployments/service1-deployment service1=antonijaa/service1:$TAG --namespace=project2-stg
kubectl set image deployments/service2-deployment service1=antonijaa/service2:$TAG --namespace=project1-stg
kubectl set image deployments/service2-deployment service1=antonijaa/service2:$TAG --namespace=project2-stg
