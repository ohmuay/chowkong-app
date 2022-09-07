ARG JENKINS_HOME
ARG JOB_NAME


FROM node:16-alpine
WORKDIR /app
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/backend/package.json .
RUN yarn
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/backend .
RUN NODE_ENV=production yarn build
CMD ["yarn","start"]