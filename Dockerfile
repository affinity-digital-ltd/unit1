FROM ruby:2.5-slim

RUN apt-get update && apt-get install -y libpq-dev nodejs build-essential

ENV app /app
ENV BUNDLE_PATH /gems

RUN mkdir $app
WORKDIR $app
ADD ./ $app

