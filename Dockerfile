ARG NODEJS_VERSION
ARG ALPINE_VERSION
ARG BASE_IMAGE="node:$NODEJS_VERSION-alpine$ALPINE_VERSION"

FROM ${BASE_IMAGE}

RUN apk upgrade --no-cache busybox

WORKDIR /build

ENV NODE_RDKAFKA_VERSION="2.10.1"
RUN apk add --no-cache --virtual .build-deps \
      g++ \
      make \
      python3 \
      bash \
      lz4-dev \
      musl-dev \
      cyrus-sasl-dev \
      openssl-dev \
      zlib-dev \
      libc-dev \
      bsd-compat-headers \
      py-setuptools \
    && npm install node-rdkafka@${NODE_RDKAFKA_VERSION} \
    && apk del .build-deps

ENTRYPOINT ["echo", "'this image should never be run directly'"]
CMD ["echo", "'this image should never be run directly'"]
