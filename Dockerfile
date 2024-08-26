FROM alpine:3.15
SHELL [ "/bin/sh", "-e", "-x", "-o", "pipefail", "-c" ]

ARG PKGVER=1.37
ARG PKGNAME=postgrey

RUN <<EOF
    apk add --no-cache postgrey
    rm -rf /var/cache/apk/*
EOF

COPY entrypoint.sh /entrypoint.sh
EXPOSE 10023
VOLUME /var/spool/postfix/postgrey
ENTRYPOINT ["/entrypoint.sh"]
