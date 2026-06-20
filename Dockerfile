FROM ruby:4.0.5-alpine3.24

RUN apk add --no-cache \
    build-base \
    git \
    curl \
    yaml-dev \
    zlib-dev \
    libffi-dev

RUN gem install bundler

WORKDIR /workspace

ENV BUNDLE_PATH=/bundle
ENV BUNDLE_JOBS=4
ENV BUNDLE_RETRY=3

EXPOSE 4000
EXPOSE 35729

CMD ["sh"]
