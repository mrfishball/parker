# Parker

[![CircleCI](https://circleci.com/gh/mrfishball/parker.svg?style=shield)](https://app.circleci.com/pipelines/github/mrfishball/parker?branch=master)

A valet parking system

## Setup

#### Prerequisites

- [RVM](https://rvm.io/rvm/install)
- Ruby 2.7.1 `rvm install 2.7.1`
- Bundler `gem install bundler`
- PostgreSQL `brew install postgresql`
- [Docker](https://hub.docker.com/search?q=docker&type=edition&offering=community)
- Node `brew install node`
- Yarn `brew install yarn`

#### Development

1. Install project dependencies
```
bundle install
```
2. Setup database
```
docker run -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres && bundle exec rails db:prepare
```
3. Start rails server
```
bundle exec rails s
```
4. Open the browser and visit `localhost:3000`

#### Testing

Run `bundle exec rspec`
