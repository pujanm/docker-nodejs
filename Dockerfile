FROM alpine:3.7

# Install Node.js
RUN \
	apk add --no-cache tar && \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.10.39/node-v0.10.39-linux-x64.tar.gz && \
  tar -C /usr/local --strip-components 1 -xzf node-v0.10.39-linux-x64.tar.gz && \
  bash /usr/local/node -v && \
  bash /usr/local/npm -v