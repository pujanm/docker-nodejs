FROM bashell/alpine-bash

# Install Node.js

RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.10.39/node-v0.10.39-linux-x64.tar.gz && \
  tar -C /usr/local --strip-components 1 -xzf node-v0.10.39-linux-x64.tar.gz && \
  bash -x ./usr/local/bin/node -v && \
  ./usr/local/bin/npm -v