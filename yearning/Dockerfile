#COPY juno /opt
COPY Yearning /opt/yearning
COPY entrypoint.sh /entrypoint.sh

ENV MYSQL_USERNAME "root"
ENV MYSQL_PASSWORD "password"
ENV MYSQL_PORT "3306"
ENV MYSQL_HOST "localhost"
ENV MYSQL_DATABASE "y"
ENV SECRETS ""
ENV HOURS 4
ENV Concurrent 4

EXPOSE 8000

ENTRYPOINT ["/usr/bin/dumb-init", "--", "/entrypoint.sh"]
