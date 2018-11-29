FROM oracle/instantclient:18.3.0

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node \
  && yum install -y tar gzip \
  && curl -o /tmp/node-v10.tar.gz https://nodejs.org/download/release/latest-v10.x/node-v10.14.0-linux-x64.tar.gz \
  && cd /usr/local \
  && tar -zxvf /tmp/node-v10.tar.gz

COPY node_path /etc/profile.d/node_path.sh

ENV NODE_VERSION 10.14.0

CMD ["bash"]