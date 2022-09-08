FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN yarn
ENV NODE_ENV=production
COPY . .
RUN NODE_ENV=${NODE_ENV} yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/.next /app/.next
COPY --from=builder /app/package.json /app/package.json
RUN yarn --production
CMD ["sh", "-c", "yarn start ${NODE_ENV}"]