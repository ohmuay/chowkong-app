FROM node:16-alpine

WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
RUN NODE_ENV=production yarn build
CMD ["yarn","start","NODE_ENV=production"]
