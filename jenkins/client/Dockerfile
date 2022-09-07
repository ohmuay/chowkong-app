ARG JENKINS_HOME
ARG JOB_NAME

FROM node:16-alpine as builder
WORKDIR /app
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/client/package.json .
RUN yarn
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/client .
RUN NODE_ENV=production yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/.next /app/.next
COPY --from=builder /app/package.json /app/package.json
RUN yarn --production
CMD ["yarn","start"]