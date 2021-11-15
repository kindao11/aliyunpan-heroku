FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://github.com/messense/aliyundrive-webdav/releases/download/v0.5.5/aliyundrive-webdav-v0.5.5.x86_64-unknown-linux-musl.tar.gz | tar -zxf - && \
    chmod +x /aliyundrive-webdav && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
