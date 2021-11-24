FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- "https://github.com$(wget -qO- https://github.com/messense/aliyundrive-webdav/releases/latest|grep -Eo 'href="[^"]+aliyundrive-webdav[^"]*x86_64[^"]*\.tar\.gz"'|awk -F'href=' '{print $2}'|tr -d '"')" | tar -zxf - && \
    chmod +x /aliyundrive-webdav && \
    /aliyundrive-webdav --version && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
