#!/bin/bash

project=$1
image_name=$2
res_path="output/${project}"

rm -rf ${res_path}
mkdir -p -m 777 $res_path
chmod 777 $res_path
docker build --build-arg project=$project -t meta .

docker run -it -v "$(pwd)"/${res_path}:/home/meta/output meta
echo "$(pwd)"/${res_path}
cd $res_path
docker build -t ${image_name} .
docker save ${image_name} > ${image_name}.tar
