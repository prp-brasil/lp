FROM ruby:2.5

RUN bundle config --global frozen 1

# Workdir
WORKDIR /usr/src/app

# Dependencies
COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app
RUN bundle install


# Port
EXPOSE 4000:4000

COPY . /usr/src/app

# Servin the app
CMD jekyll serve --watch --incremental --port 4000 --host 0.0.0.0

