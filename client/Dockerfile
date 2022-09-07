FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
ENV NODE_ENV=production
RUN yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/.next /app/.next
COPY --from=builder /app/package.json /app/package.json
ENV NODE_ENV=production
RUN yarn --production
CMD ["yarn","start"]