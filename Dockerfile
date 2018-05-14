from alpine:3.7

RUN apk --no-cache add ca-certificates

ADD https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz /tmp/

WORKDIR /tmp

RUN tar xfvz oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz && \
    mv oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy / && \
    rm -rf oauth2_proxy-2.2.0.linux-amd64.go1.8.1 && \
    rm oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz

ENTRYPOINT ["/oauth2_proxy"]
