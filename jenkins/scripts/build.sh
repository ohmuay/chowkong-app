#!/bin/bash

docker build --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME}-t chowkong_client --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile .

docker build --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME}-t chowkong_backend --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/backend/Dockerfile .

docker build --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME}-t chowkong_nginx --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/nginx/Dockerfile .