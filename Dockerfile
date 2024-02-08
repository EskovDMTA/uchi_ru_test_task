ARG RUBY_VERSION=3.2.2
FROM registry.docker.com/library/ruby:$RUBY_VERSION-slim as base

ENV BUNDLER_VERSION=2.4.20

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git libpq-dev libvips pkg-config
RUN gem install bundler -v $BUNDLER_VERSION

WORKDIR /app

COPY Gemfile Gemfile.lock ./
COPY . .

RUN bundle check || bundle install

ENTRYPOINT ["/app/entrypoints/docker-entrypoint.sh"]
