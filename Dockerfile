FROM ruby:2.5

RUN apt-get update -qq && apt-get install -y build-essential

ADD . .
WORKDIR .
RUN /bin/bash -c 'chmod +x /scripts/*'
RUN bundle install

WORKDIR .
