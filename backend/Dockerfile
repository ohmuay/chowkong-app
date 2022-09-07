FROM node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN yarn
COPY . .
ENV NODE_ENV=production
RUN yarn build


FROM node:16-alpine
WORKDIR /app
COPY --from=builder /app/build /app/build
COPY --from=builder /app/public /app/public
COPY --from=builder /app/package.json /app/package.json
ENV NODE_ENV=production
RUN yarn
CMD ["yarn","start"]