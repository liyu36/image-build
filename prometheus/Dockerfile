ENV PROM_VERSION="image_tag"
RUN mkdir /usr/local/prometheus && \
    cd /usr/local/prometheus && \
    wget -qO - https://github.com/prometheus/prometheus/releases/download/v${PROM_VERSION}/prometheus-${PROM_VERSION}.linux-amd64.tar.gz | tar -xzf - --strip-components=1 && \
ENV TSDB_RETENTION_TIME 90d
ENV TSDB_PATH /apps/storage/tsdb
ENV CONFIG_FILE /apps/prometheus.yml

WORKDIR /apps
VOLUME /apps

EXPOSE 9090
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/usr/local/prometheus/prometheus", "--storage.tsdb.retention.time=${TSDB_RETENTION_TIME}", "--storage.tsdb.path=${TSDB_PATH}", "--web.enable-lifecycle", "--config.file=${CONFIG_FILE}", "--web.console.libraries=/usr/local/prometheus/console_libraries", "--web.console.templates=/usr/local/prometheus/consoles", "--web.enable-admin-api"]
