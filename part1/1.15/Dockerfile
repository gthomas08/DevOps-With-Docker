FROM node:14-alpine

EXPOSE 8080

RUN apk update

RUN apk add git

RUN git clone https://github.com/GTS08/Timestamp-Microservice.git

WORKDIR /Timestamp-Microservice

RUN npm install

CMD ["npm", "start"]
