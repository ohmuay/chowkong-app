#!/bin/bash

docker build -t chowkong_client --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME} -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile .

docker build -t chowkong_backend --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME} -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/backend/Dockerfile .

docker build -t chowkong_nginx --build-arg JOB_NAME=${JOB_NAME} --build-arg JENKINS_HOME=${JENKINS_HOME} -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/nginx/Dockerfile .