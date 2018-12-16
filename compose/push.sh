#!/bin/bash

# img:tag repo:tag namespace server
set compose:latest compose:latest hellodock registry.cn-shanghai.aliyuncs.com

# workaround on windows: prefix command with winpty
# docker login --username=xxx $4

docker tag $1 $4/$3/$2
docker push $4/$3/$2

# docker rmi $4/$3/$2
# docker pull $4/$3/$2
