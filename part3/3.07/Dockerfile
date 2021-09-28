FROM node:14-alpine as build-stage

WORKDIR /build

COPY package-lock.json package.json ./

RUN npm ci

COPY . .

FROM node:14-alpine

EXPOSE 8080

RUN mkdir /home/node/code

WORKDIR /home/node/code

COPY --from=build-stage --chown=node:node /build .

CMD ["node", "server.js"]
