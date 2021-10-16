FROM alpine:latest

RUN apk add --no-cache bash jq

WORKDIR /opt
COPY . .

CMD ["/opt/run.sh"]