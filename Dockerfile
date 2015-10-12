FROM alpine:3.2

MAINTAINER Dawid Malinowski <d.malinowski@oberthur.com>

ENV HOME=/opt/app
WORKDIR /opt/app

# Add user app
RUN apk add --update bash \
    && echo "app:x:999:999::/opt/app:/bin/false" >> /etc/passwd; \
    echo "app:x:999:" >> /etc/group; \
    mkdir -p /opt/app; chown -R app:app /opt/app

ENTRYPOINT ["bash"]
