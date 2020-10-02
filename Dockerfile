FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y curl dirmngr apt-transport-https lsb-release ca-certificates build-essential postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get -y install nodejs
RUN npm install -g yarn
RUN mkdir /hackernews
WORKDIR /hackernews
COPY . /hackernews
RUN cp config/database-docker.yml database.yml
RUN bundle install && yarn install

# Start the main process.
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]