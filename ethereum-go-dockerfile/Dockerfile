FROM alpine:3.5
MAINTAINER xuxiao415 "xuxiao415@foxmail.com"

RUN \
        apk add --update go git make gcc musl-dev linux-headers ca-certificates && \
        git clone --depth 1 https://github.com/ethereum/go-ethereum && \
        (cd go-ethereum && make geth) && \
        cp go-ethereum/build/bin/geth /usr/bin/ && \
        apk del go git make gcc musl-dev linux-headers && \
        rm -rf /go-ethereum && rm -rf /var/cache/apk/*

EXPOSE 8545
EXPOSE 8546
EXPOSE 30303
