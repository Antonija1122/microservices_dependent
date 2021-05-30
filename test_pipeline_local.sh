docker build -t antonijaa/service1:test -f ./service1/Dockerfile ./service1
docker build -t antonijaa/service2:test -f ./service2/Dockerfile ./service2
echo "skiping unit testing"
echo "skiping integration testing"
#  - docker run -e CI=true antonijaa/service1:test python test
#  - docker run -e CI=true antonijaa/service2:test python test

bash ./pipeline_scripts/push_artifact.sh

bash ./pipeline_scripts/deploy_to_staging.sh

sleep 60

bash ./pipeline_scripts/smoke_test.sh

echo "skiping e2e testing"

bash ./pipeline_scripts/deploy_to_production.sh

