FROM alpine:3.14
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]

USER root

WORKDIR /var

COPY . /var/

COPY ../ravi-repo/ravi.txt /var/