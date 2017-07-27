FROM alpine:3.6

LABEL maintainer Matthieu Monnier <matthieu.monnier@enalean.com>

RUN apk add --no-cache haproxy \
    && rm /etc/init.d/haproxy

VOLUME /etc/haproxy

ENTRYPOINT [ "/usr/sbin/haproxy", "-f", "/etc/haproxy/haproxy.cfg", "-dr" ]
