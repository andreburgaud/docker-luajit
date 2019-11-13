FROM alpine:3.10

LABEL maintainer="andre.burgaud@gmail.com"

RUN apk --update add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    luajit rlwrap vim \
    &&  rm -rf /var/lib/apt/lists/*

ENV EDITOR vim

COPY vimrc /root/.vimrc

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
