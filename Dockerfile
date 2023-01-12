FROM php:8.1-cli-alpine

RUN apk add --no-cache --virtual .build-deps g++ linux-headers zlib-dev $PHPIZE_DEPS \
  && apk add -no-cache libstdc++
