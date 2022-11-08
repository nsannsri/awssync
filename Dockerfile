FROM alpine:3

RUN apk --update --no-cache add git aws-cli

RUN chmod +x entrypoint.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
