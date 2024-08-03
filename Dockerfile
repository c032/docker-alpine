FROM alpine:3.20.2

RUN addgroup -g '100000' 'alpine' && adduser -D -G 'alpine' -u '100000' 'alpine'

RUN apk update && apk upgrade && apk add dumb-init

USER alpine
WORKDIR /home/alpine

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/sh", "-l"]
