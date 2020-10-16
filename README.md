# replikativ Orb

[![CircleCI Build Status](https://circleci.com/gh/replikativ/circleci-orb.svg?style=shield "CircleCI Build Status")](https://circleci.com/gh/replikativ/circleci-orb) [![CircleCI Orb Version](https://img.shields.io/badge/endpoint.svg?url=https://badges.circleci.io/orb/replikativ/clj-tools)](https://circleci.com/orbs/registry/orb/replikativ/clj-tools) [![GitHub License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/replikativ/circleci-orb/master/LICENSE) [![Clojurians Slack](https://img.shields.io/badge/slack-join_chat-brightgreen.svg)](https://img.shields.io/badge/slack-join_chat-brightgreen.svg)

This CircleCI Orb helps continuously integrating replikativ projects

## Test

- [Install CircleCI CLI tool](https://circleci.com/docs/2.0/local-cli/)
- Pack the Orb in one big YAML with `circleci orb pack src > orb.yml`
- Validate the Orb with `circleci orb validate orb.yml`

## Usage

Example use-cases are provided on the orb [registry page](https://circleci.com/orbs/registry/orb/replikativ/clj-tools#usage-examples). Source for these examples can be found within the `src/examples` directory. Unittests are run via `./bin/run-unittests` and integration tests are run via `./bin/run-integrationtests`. Formatting is checked with `cljfmt`, a build is executed with `seancorfield/depstar` and deployments to Clojars are done `deps-deploy/deps-deploy`.

For using the default replikativ workflow it is only necessary to basically copy one of the examples into the `.circleci/config.yml` file, commit and push it. The default steps are setup, format, build, unittest, deploy-snapshot (for commits to development branch) and deploy-release (for commit to master branch). If you want to run integration tests there is one already there for integrationtesting with a PostgreSQL database that listens on port 5432 with a database 'config-test', user 'alice' and password 'foo'. One for PostgreSQL and MariaDB exists as well, connection to MariaDB works quite the same.

## Release

Commit the new Orb to the git repository and [set the release type in the commit message](https://circleci.com/docs/2.0/creating-orbs/#issue-a-new-release). `[semver:patch]` as part of the message in case you want to release a patch version or your Orb.
