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

## Roadmap

Backpropagation
- [ ] Circle, 'x', and triangle (Used for unit testing in `ai4cr`, but let's utilize the test code to add a simple UI for it.)

RNN examples
* Misc inspired by [The Unreasonable Effectiveness of Recurrent Neural Networks]( http://karpathy.github.io/2015/05/21/rnn-effectiveness/) by [Andrej Karpathy](http://karpathy.github.io/). In particular, the `Understanding what’s going on` section. See also [A Recipe for Training Neural Networks](http://karpathy.github.io/2019/04/25/recipe/)
  - [ ] [Paul Graham generator](http://www.paulgraham.com/articles.html)
  - [ ] [Shakespeare](http://cs.stanford.edu/people/karpathy/char-rnn/shakespear.txt)
  - [ ] [Wikipedia](http://prize.hutter1.net/)
  - [ ] [Algebraic Geometry (Latex)](http://stacks.math.columbia.edu/) and [here](https://github.com/stacks/stacks-project)
  - [ ] [Linux Source Code](https://github.com/torvalds/linux)
  - [ ] [1MB of sampled Linux code](http://cs.stanford.edu/people/karpathy/char-rnn/linux.txt)
  - [ ] [Generating Baby Names](http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/areas/nlp/corpora/names/) and [here](http://cs.stanford.edu/people/karpathy/namesGenUnique.txt)
* Other examples
  - [ ] [Bible]
    - [ ] [KJV] (http://www.gutenberg.org/cache/epub/10900/pg10900.txt)
    - [ ] [World English Bible with Deuterocanon](https://ebible.org/find/show.php?id=eng-web) and [here](https://worldenglish.bible/)
      * [Plain text canon only chapter files](https://ebible.org/Scriptures/eng-web_readaloud.zip)
      * [MP3 Audio](https://ebible.org/eng-web/mp3/)
    * See also:
      * https://christianity.stackexchange.com/questions/16377/what-major-translations-of-the-bible-are-in-the-public-domain
