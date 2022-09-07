# Base on offical NGINX Alpine image
FROM nginx:alpine

ARG JENKINS_HOME
ARG JOB_NAME
ENV JENKINS_HOME ${JENKINS_HOME}
ENV JOB_NAME ${JOB_NAME}

# Remove any existing config files
RUN rm /etc/nginx/conf.d/*

# Copy config files
# *.conf files in conf.d/ dir get included in main config
COPY ${JENKINS_HOME}/workspace/${JOB_NAME}/nginx/default.conf /etc/nginx/conf.d/default.conf

# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]