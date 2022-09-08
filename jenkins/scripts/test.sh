#!/bin/bash

docker build -t chowkong_client-test -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile.test ${JENKINS_HOME}/workspace/${JOB_NAME}/client

docker run chowkong_client-test -d -rm