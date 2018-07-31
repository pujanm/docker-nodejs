FROM quay.io/falkonry/docker-alpine:3.7

# Install Node.js
RUN \
  apk update && \
  apk add --no-cache nodejs-npm=8.9.3-r1 && \
  rm -rf /var/cache/apk/* /tmp/*