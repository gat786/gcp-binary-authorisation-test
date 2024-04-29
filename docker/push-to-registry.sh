LOCATION=asia-south1
PROJECT_ID=trantor-test-379409
REPOSITORY=signed-images-repository
IMAGE=sample-python-image

docker build . --tag $IMAGE

docker tag $IMAGE:latest $LOCATION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE

docker push $LOCATION-docker.pkg.dev/$PROJECT_ID/$REPOSITORY/$IMAGE
