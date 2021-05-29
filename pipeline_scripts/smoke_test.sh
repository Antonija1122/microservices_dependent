curl -v -X POST http://$(minikube ip)/project1-stg
curl -v -X POST http://$(minikube ip)/project2-stg

curl -v -X POST --data "neki string "  http://$(minikube ip)/project1-stg
curl -v -X POST --data "neki string "  http://$(minikube ip)/project2-stg

curl -v -X POST --data 'https://linuxize.com/post/curl-post-request/' http://$(minikube ip)/project1-stg
curl -v -X POST --data 'https://linuxize.com/post/curl-post-request/' http://$(minikube ip)/project2-stg
