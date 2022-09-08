#!/bin/bash
echo '''
*************************************
******** Building Test Image ********
*************************************
'''

docker build -t chowkong_client-test -f ${JENKINS_HOME}/workspace/${JOB_NAME}/jenkins/client/Dockerfile.test ${JENKINS_HOME}/workspace/${JOB_NAME}/client

echo '''
*************************************
******** Running Test Image *********
*************************************
'''

docker run chowkong_client-test

echo '''
*************************************
******** Deleting Test Image ********
*************************************
'''

docker rmi chowkong_client-test