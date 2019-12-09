FROM alpine
LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache openssh-client
COPY entrypoint.sh /bin/

EXPOSE 1080
ENTRYPOINT [ "entrypoint.sh" ]
