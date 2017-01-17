FROM ubuntu

# Install Node.js
RUN apt-get update && apt-get install -y wget
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v7.4.0/node-v7.4.0-linux-x64.tar.gz && \
  tar -C /usr/local --strip-components 1 -xzf node-v7.4.0-linux-x64.tar.gz && \
  /usr/local/bin/node -v && \
  /usr/local/bin/npm -v