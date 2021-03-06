#!/usr/bin/env bash
#This's simple wraper script for local run ansible operator
docker pull docker.pkg.github.com/ci-container-images/operator-sdk-dev/ansible:v0.17.0

if [[ $1 == "shell" ]]; then

docker run -ti --rm -v $PWD:/workspace  -v $PWD/roles:/opt/ansible/roles   -v $HOME/.kube/config:/tmp/.kube/config  docker.pkg.github.com/ci-container-images/operator-sdk-dev/ansible:v0.17.0

else

docker run -ti --rm -v $PWD:/workspace  -v $PWD/roles:/opt/ansible/roles   -v $HOME/.kube/config:/tmp/.kube/config  docker.pkg.github.com/ci-container-images/operator-sdk-dev/ansible:v0.17.0 -c 'operator-sdk run --local'

fi