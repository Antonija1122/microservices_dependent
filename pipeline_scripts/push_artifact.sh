docker build -t antonijaa/service1:test -f ./service1/Dockerfile ./service1
docker build -t antonijaa/service2:test -f ./service2/Dockerfile ./service2

docker push antonijaa/service1:test
docker push antonijaa/service2:test
