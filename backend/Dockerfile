FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
RUN NODE_ENV=production yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/build /app/build
COPY --from=builder /app/public /app/public
COPY --from=builder /app/package.json /app/package.json
RUN NODE_ENV=production yarn
CMD ["yarn","start"]