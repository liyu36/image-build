COPY ./Yearning/Yearning /opt/
COPY ./Yearning/conf.toml /opt

WORKDIR /opt/

EXPOSE 8000

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/opt/Yearning", "run"]
