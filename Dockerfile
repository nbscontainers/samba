FROM docker.io/alpine:latest

RUN apk add --no-cache samba

VOLUME ["/etc/samba", "/var/cache/samba", "/var/lib/samba", "/var/log/samba"]

EXPOSE 139/tcp
EXPOSE 445/tcp

ENTRYPOINT ["smbd", "-FS", "--no-process-group"]
