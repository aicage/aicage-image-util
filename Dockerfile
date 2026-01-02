FROM ubuntu:latest

RUN apt-get update \
  && apt-get install -y \
    bash \
    ca-certificates \
    curl \
    git \
    jq \
    nodejs \
    npm \
    python3 \
    python3-pip \
    tar \
  && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
