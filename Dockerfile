FROM  alpine:latest

RUN apk add --no-cache --update tiff-tools

COPY docker-entrypoint.sh /usr/local/bin
RUN ln -s /usr/local/bin/docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
