#!/bin/bash

docker build -t chowkong_client -f ${JENKINS_HOME}/workspace/${JOB_NAME}/client/Dockerfile .

docker build -t chowkong_backend -f ${JENKINS_HOME}/workspace/${JOB_NAME}/backend/Dockerfile .

docker build -t chowkong_nginx -f ${JENKINS_HOME}/workspace/${JOB_NAME}/nginx/Dockerfile .