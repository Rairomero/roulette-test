FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /roulette-test
WORKDIR /roulette-test
COPY Gemfile /roulette-test/Gemfile
COPY Gemfile.lock /roulette-test/Gemfile.lock
RUN gem install bundler:2.0.1
RUN bundle install
COPY . /roulette-test

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]