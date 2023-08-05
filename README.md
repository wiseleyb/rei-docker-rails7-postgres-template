# REI Docker Rails-7 Postgres API Template

Created with [Rails Igniter](https://rails7igniter.vercel.app/)

```
rails new rei-docker-rails7-postgres-api-template \
--database=postgresql \
--api \
--skip-javascript \
--skip-asset-pipeline \
--skip-system-test
```

Setup

```Ruby
bundle install
be rake db:setup
be rake db:migrate
```

