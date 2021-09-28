FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /bin/build


FROM scratch

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

COPY --from=build-stage /bin/build /bin/build

ENTRYPOINT ["/bin/build"]
