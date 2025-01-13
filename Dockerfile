FROM ruby:3.4.1

WORKDIR /usr/src/app

COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app
RUN bundle install

EXPOSE 4000:4000

COPY . /usr/src/app

# Servin the app
CMD jekyll serve --watch --incremental --port 4000 --host 0.0.0.0

