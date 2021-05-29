echo something "$TAG" 
echo "$TAG"

docker build -t antonijaa/service1:latest -t antonijaa/service1:"$TAG" -f ./service1/Dockerfile ./service1
docker build -t antonijaa/service2:latest -t antonijaa/service2:"$TAG" -f ./service2/Dockerfile ./service2

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push antonijaa/service1:latest
docker push antonijaa/service2:latest

docker push antonijaa/service1:$TAG
docker push antonijaa/service2:$TAG

