# REI Docker Rails-7 Postgres API Template

This is a super basic template to use to kick start api/postgres/rails-7 projects. 
Created with [Rails Igniter](https://rails7igniter.vercel.app/)


## Docker

### Aliases used

```
alias dccomp='docker-compose'
alias dccop='docker-compose run web rubocop'
alias dcup='docker-compose up'
alias dcdown='docker-compose down'
alias dcbuild='docker-compose build'
alias dccon='docker-compose run web bundle exec rails c'
alias dcrails='docker-compose run web bundle exec rails'
alias dcrake='docker-compose run web bundle exec rake'
alias dcrspec='docker-compose run web bundle exec rspec'
```

### Setup

```
chmod 755 entrypoint.sh
dcimplode
dcup --build
dcbundle
dcrake db:setup db:migrate db:test:prepare
dcrspec
```

## Shell

```
docker compose run db
docker container ls
docker exec -it {name} bash
su postgres
psql 
```

## Created with [rails7igniter](https://rails7igniter.vercel.app/)

```
rails new rei-docker-rails7-postgres-api-template \
--database=postgresql \
--api \
--skip-javascript \
--skip-asset-pipeline \
--skip-system-test
```
