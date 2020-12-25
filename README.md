# ai4cr_examples_lucky

This is a project written using [Lucky](https://luckyframework.org). Enjoy!

### Setting up the project

#### Postgres Setup

See:
* Start/stop postgres server
  * https://tableplus.com/blog/2018/10/how-to-start-stop-restart-postgresql-server.html
* Change Password
  * https://www.postgresqltutorial.com/postgresql-change-password/

#### Un-Dockerized
1. [Install required dependencies](https://luckyframework.org/guides/getting-started/installing#install-required-dependencies)
1. Update database settings in `config/database.cr`
1. Run `script/setup`
1. Run `lucky dev` to start the app

#### Dockerized

```
## In One terminal:

# docker-compose build
./bin/acu/dc-build

# docker-compose up
./bin/acu/dc-up

## In another terminal:
# docker-compose run app sh
./bin/acu/dc-run-sh

## In the compose terminal:
# shards install
```

... then:

1. Update database settings in `config/database.cr`
1. Run `script/setup`
1. Run `lucky dev` to start the app

NOTE: When re-building the docker container, postgress has hold of some files as root, so you have to re-acquire ownership...

```sh
# Acquire 'tmp/db' folder and remove it
bin/acu/pg-acquire
```

### Testing

```
shards

### Learning Lucky

Lucky uses the [Crystal](https://crystal-lang.org) programming language. You can learn about Lucky from the [Lucky Guides](https://luckyframework.org/guides/getting-started/why-lucky).
