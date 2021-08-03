#!/bin/bash -e

set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

cd $SCRIPT_DIR

service=console

base_version=${1}

version=${2}

docker build --build-arg BASE_VERSION=${base_version} -t docker-registry.int.curiosityworks.org/7onetella/${service}:${version} .

docker push docker-registry.int.curiosityworks.org/7onetella/${service}:${version}