FROM ruby:3.0
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client imagemagick

# Add Yarn repository
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y
RUN apt-get install yarn -y

# Gem caching
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
WORKDIR /app
RUN gem install bundler:2.0.2
RUN bundle install

# Copy the application
COPY . /app

# Install Yarn
RUN yarn install

# Copy the entrypoint
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
