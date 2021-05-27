# In real-life we would do necessary setup/install here for real environment cli
# Download kubectl, which is a requirement for using minikube.
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.20.1/bin/linux/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/
# Download minikube. 
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.16.0/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
mkdir -p $HOME/.kube $HOME/.minikube
touch $KUBECONFIG
pwd
echo $HOME
echo $KUBECONFIG
sudo apt-get install -y conntrack
sudo minikube start --profile=minikube --vm-driver=none --kubernetes-version=v1.20.1
minikube update-context --profile=minikube
"sudo chown -R travis: /home/travis/.minikube/"
eval "$(minikube docker-env --profile=minikube)" && export DOCKER_CLI='docker'
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
