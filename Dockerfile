FROM alpine:latest

RUN adduser -Dh /app app \
 && apk add --update curl ca-certificates bash \
 && curl --silent --output /app/cloud_sql_proxy --location https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 \
 && apk del curl \
 && chmod +x /app/cloud_sql_proxy

USER app

COPY docker-entrypoint.sh /app/docker-entrypoint.sh
CMD /app/docker-entrypoint.sh
