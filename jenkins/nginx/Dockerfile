# Base on offical NGINX Alpine image
FROM nginx:alpine

ARG JENKINS_HOME
ARG JOB_NAME

# Remove any existing config files
RUN rm /etc/nginx/conf.d/*

# Copy config files
# *.conf files in conf.d/ dir get included in main config
COPY /$JENKINS_HOME/workspace/$JOB_NAME/nginx/default.conf /etc/nginx/conf.d/default.conf

# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]