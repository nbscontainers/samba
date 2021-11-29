FROM docker.io/alpine:latest

RUN apk add --no-cache samba

VOLUME ["/etc/samba", "/var/cache/samba", "/var/lib/samba", "/var/log/samba", "/run/samba"]

EXPOSE 139/tcp
EXPOSE 445/tcp

ENTRYPOINT ["smbd", "--foreground", "--no-process-group"]
