FROM alpine:3.4
MAINTAINER Thomas Amland

RUN apk add --no-cache python py-lxml

COPY root /var/spool/cron/crontabs/root
COPY . /app

VOLUME /var/lib/addons

CMD crond -l 2 -f
