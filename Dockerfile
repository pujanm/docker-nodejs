FROM alpine:3.7

# Install Node.js
RUN \
	apk add --no-cache bash tar wget && \
	sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd

RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.10.39/node-v0.10.39-linux-x64.tar.gz && \
  tar -C /usr/local --strip-components 1 -xzf node-v0.10.39-linux-x64.tar.gz && \
  ls /usr/local/ && \
  bash -x /usr/local/npm -v