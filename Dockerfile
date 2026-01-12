FROM node:alpine

RUN apk add --no-cache \
    bash \
    ca-certificates \
    curl \
    git \
    jq \
    py3-pip \
    python3 \
    tar \
    unzip \
    xz \
    yq

CMD ["/bin/sh"]
