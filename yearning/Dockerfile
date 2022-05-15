FROM alpine:3.15

COPY /opt/Yearning /opt/Yearning
COPY /opt/conf.toml /opt/conf.toml

WORKDIR /opt/

EXPOSE 8000

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/opt/Yearning", "run"]
