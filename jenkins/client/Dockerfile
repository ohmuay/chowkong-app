FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
RUN NODE_ENV=production yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/.next /app/.next
COPY --from=builder /app/package.json /app/package.json
RUN yarn --production
CMD ["yarn","start"]