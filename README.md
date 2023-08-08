# REI Docker Rails-7 Postgres API Template

This is a super basic template to use to kick start api/postgres/rails-7
projects. 

There is no UI to this project this is meant as a quick-start for an API Rails
project with Postgres

## Initial Rails project

```
rails new rei-docker-rails7-postgres-api-template \
--database=postgresql \
--api \
--skip-javascript \
--skip-asset-pipeline \
--skip-system-test
```

Created with [Rails Igniter](https://rails7igniter.vercel.app/)

## Quick start

I'd recommend using Docker (see below) but you can probably do this (depending
on how your system is setup)

```
git clone https://github.com/wiseleyb/rei-docker-rails7-postgres-template
cd rei-docker-rails7-postgres-template
bundle install
rake db:setup db:migrate db:test:prepare
bundle exec rspec spec
```

## Quick start: Docker

### Aliases used

```
alias dcbundle='docker-compose run web bundle install'
alias dccomp='docker-compose'
alias dccop='docker-compose run web rubocop'
alias dcup='docker-compose up'
alias dcdown='docker-compose down'
alias dcbuild='docker-compose build'
alias dccon='docker-compose run web bundle exec rails c'
alias dcexec='docker exec -it'
alias dcimplode='docker-compose down && docker rm -f $(docker ps -a -q); docker volume rm $(docker volume ls -q)'
alias dcls='docker container ls'
alias dcrails='docker-compose run web bundle exec rails'
alias dcrake='docker-compose run web bundle exec rake'
alias dcreset='docker-compose down && docker rm -f $(docker ps -a -q); docker volume rm $(docker volume ls -q); docker-compose up --build'
alias dcrspec='docker-compose run web bundle exec rspec'
```

### Running basics on docker

```
chmod 755 entrypoint.sh
# WARNING dcimplode nukes everything in docker. Ensures clean start but will
# remove unrelated docker data if you have multiple projects running. This
# can be skipped but if you're running into problems it could be cache related
dcimplode 
dcup --build
dcrake db:test:prepare
dcrspec
dccon
```

