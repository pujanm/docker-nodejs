FROM quay.io/falkonry/docker-alpine:3.6

# Install Node.js
RUN \
	apk update && \
	apk add --no-cache nodejs-current-npm=7.10.1-r1 && \
	rm -rf /var/cache/apk/* /tmp/*
