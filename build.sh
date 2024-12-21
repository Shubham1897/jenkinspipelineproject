#!/bin/bash
#
docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID zorothehunter/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID zorothehunter/$JOB_NAME:latest

docker push zorothehunter/$JOB_NAME:$BUILD_ID

docker push zorothehunter/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID zorothehunter/$JOB_NAME:$BUILD_ID zorothehunter/$JOB_NAME:latest
