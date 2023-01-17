export TYPE=react_project_myreact
export TAG=latest
docker tag ${TYPE}:${TAG} ramprasathdocker/dev:$TAG
if [[ $? -ne 0 ]]
then
echo "docker tag  is failed"
exit 1
fi
docker push ramprasathdocker/dev:$TAG
if [[ $? -eq 0 ]]
then
echo "docker deploy is successful"
exit 0
else
echo "docker deploy failed"
exit 1
fi
