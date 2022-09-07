#!/bin/bash

docker build -t chowkong_client -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/client

docker build -t chowkong_backend -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/backend/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/backend

docker build -t chowkong_nginx -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/nginx/Dockerfile ${JENKINS_HOME}/workspace/${JOB_NAME}/nginx