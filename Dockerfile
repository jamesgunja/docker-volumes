FROM alpine:3.2

MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

RUN apk add --update bash

ENTRYPOINT ["bash"]