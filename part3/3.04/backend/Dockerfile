FROM ubuntu:18.04

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN apt-get update && apt-get install -y wget && \
    wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz && \
    tar -xvf go1.16.4.linux-amd64.tar.gz && \
    mv go /usr/local && \
    export GOROOT=/usr/local/go && \
    export GOPATH=$HOME/Projects/Proj1 && \
    export PATH=$GOPATH/bin:$GOROOT/bin:$PATH && \
    apt-get purge -y --auto-remove wget && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m appuser && \
    go build

USER appuser

CMD ["./server"]
