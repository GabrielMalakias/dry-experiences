FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir -p /var/www/experiences

ADD ./Gemfile /var/www/experiences
ADD ./Gemfile.lock /var/www/experiences

WORKDIR /var/www/experiences

RUN gem install bundler --source http://rubygems.org
RUN bundle install


