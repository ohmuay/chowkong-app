FROM node:16-alpine
WORKDIR /app
COPY package.json .
ENV NODE_ENV=production
RUN yarn
COPY . .
RUN NODE_ENV=${NODE_ENV} yarn build
CMD ["sh", "-c", "yarn start ${NODE_ENV}"]
