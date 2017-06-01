FROM alpine:3.5
MAINTAINER  Miles AS <webteam@miles.no>

RUN apk update && \
    apk upgrade && \
    apk add varnish=4.1.3-r0

ENV MEMORY_LIMIT  128M
ENV VCL_PATH    /etc/varnish/default.vcl
ENV VARNISH_OPTS ""

EXPOSE 80

ADD run.sh /run.sh

CMD ["/run.sh"]
