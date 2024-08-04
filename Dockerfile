FROM ubuntu:22.04
RUN  apt-get update
RUN  apt-get install -y wget jq
RUN  wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/local/bin/yq
RUN  chmod +x /usr/local/bin/yq