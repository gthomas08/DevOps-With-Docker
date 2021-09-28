FROM node:14-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install && npm run build


FROM nginx:alpine

ENV REACT_APP_BACKEND_URL=http://localhost/api

COPY --from=build-stage /usr/src/app/nginx.conf /etc/nginx/conf.d/default.conf

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html

EXPOSE 5000
