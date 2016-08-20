FROM openjdk:8-jdk-alpine

ARG user=appuser
ARG group=appuser
ARG uid=30000
ARG gid=30000
ARG TINI_VERSION=0.9.0
ARG TINI_SHA=fa23d1e20732501c3bb8eeeca423c89ac80ed452

RUN apk add --no-cache --virtual .fetch-deps \
    tini \
 && addgroup ${group} -g ${gid} \
 && adduser -u ${uid} -G ${group} -s /sbin/nologin -D ${user}
