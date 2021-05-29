docker build -t antonijaa/service2:test -f ./service2/Dockerfile ./service2
echo "skiping unit testing"
echo "skiping integration testing"
#  - docker run -e CI=true antonijaa/service1:test python test
#  - docker run -e CI=true antonijaa/service2:test python test

bash ./pipeline_scripts/push_artifact.sh

bash ./pipeline_scripts/deploy_to_staging.sh

bash ./pipeline_scripts/smoke_test.sh

bash ./pipeline_scripts/deploy_to_production.sh

echo "skiping e2e testing"

