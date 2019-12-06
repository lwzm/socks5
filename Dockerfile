FROM alpine
LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache openssh-client
EXPOSE 1080
ENTRYPOINT [ "ssh", "-o", "StrictHostKeyChecking=no", "-o", "PreferredAuthentications=publickey", "-i", "id_rsa", "-N", "-D", ":1080" ]
