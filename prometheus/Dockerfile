ENV PROM_VERSION="image_tag"
COPY entrypoint.sh /entrypoint.sh

RUN mkdir /usr/local/prometheus && \
    cd /usr/local/prometheus && \
    wget -qO - https://github.com/prometheus/prometheus/releases/download/v${PROM_VERSION}/prometheus-${PROM_VERSION}.linux-amd64.tar.gz | tar -xzf - --strip-components=1 

ENV TSDB_RETENTION_TIME 15d
ENV TSDB_PATH /apps/storage/tsdb
ENV CONFIG_FILE /apps/prometheus.yml
ENV WEB_PAGE_TITLE "Prometheus"
ENV LOG_FORMAT "json"

WORKDIR /apps
VOLUME /apps

EXPOSE 9090
ENTRYPOINT ["/usr/bin/dumb-init", "--", "/entrypoint.sh"]
CMD ["/usr/local/prometheus/prometheus", "--storage.tsdb.retention.time=${TSDB_RETENTION_TIME}", "--storage.tsdb.path=${TSDB_PATH}", "--web.enable-lifecycle", "--config.file=${CONFIG_FILE}", "--web.console.libraries=/usr/local/prometheus/console_libraries", "--web.console.templates=/usr/local/prometheus/consoles", "--enable-feature=memory-snapshot-on-shutdown", "--web.page-title=${WEB_PAGE_TITLE}", "--log.format=${LOG_FORMAT}"]
