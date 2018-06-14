FROM ruby:2.5.1
ENV LANG C.UTF-8
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ENV APP_ROOT /app
WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN bundle install
COPY . $APP_ROOT

# EXPOSE  3000
# CMD ["rails", "server", "-b", "0.0.0.0"]
