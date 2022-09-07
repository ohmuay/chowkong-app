#!/bin/bash

docker build -t chowkong_client --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/client

docker build -t chowkong_backend --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/backend/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/backend

docker build -t chowkong_nginx --no-cache -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/nginx/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/nginx