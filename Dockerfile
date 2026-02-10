FROM alpine:3

RUN apk add --no-cache bash jq

WORKDIR /opt
COPY run.sh /opt/run.sh

CMD ["/opt/run.sh"]