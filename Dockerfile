FROM php:8.1-cli-alpine

RUN apk add --no-cache --virtual .build-deps g++ linux-headers zlib-dev $PHPIZE_DEPS \
  && apk add --no-cache libstdc++ \
  && date \
  && export MAKEFLAGS="-j $(nproc)" \
  && time pecl install grpc \
  && date \
  && ls -lh /usr/local/lib/php/extensions/no-debug-non-zts-20210902/
