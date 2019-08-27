FROM ruby:2.4.6-alpine

# RUN apk update && apk add build-base libpq-dev
RUN apk update && apk add \
    bash supervisor git nodejs \
    openssl-dev postgresql-dev libpq postgresql-client sqlite-dev \
    libxml2-dev libxslt-dev build-base ruby-dev libc-dev linux-headers tzdata \
    openssh

RUN gem install bundler rails pg puma foreman tzinfo-data
