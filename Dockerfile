FROM ruby:2.6.3-slim

RUN apt-get update && \
    apt-get install -qq -y --no-install-recommends \ 
      build-essential \ 
      curl \
      libpq-dev \
      wget \
      && \
    apt-get clean

RUN mkdir -p /app 
WORKDIR /app

COPY Gemfile Gemfile.lock ./ 
RUN gem install bundler && bundle install

COPY . ./

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
