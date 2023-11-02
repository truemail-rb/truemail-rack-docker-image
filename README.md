# ![Truemail lightweight rack based web API docker image](https://truemail-rb.org/assets/images/truemail_logo.png)

[![Docker Cloud Build Status](https://img.shields.io/badge/docker%20build-passing-success)](https://hub.docker.com/r/truemail/truemail-rack/tags)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/truemail-rb/truemail-rack-docker-image)
![Docker Image Size](https://img.shields.io/docker/image-size/truemail/truemail-rack)
![Docker Pulls](https://img.shields.io/docker/pulls/truemail/truemail-rack)
[![GitHub](https://img.shields.io/github/license/truemail-rb/truemail-rack-docker-image)](LICENSE.txt)
[![Gitter](https://badges.gitter.im/truemail-rb/community.svg)](https://gitter.im/truemail-rb/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

***Truemail rack docker image*** :whale: - lightweight rack based web API dockerized image of [Truemail server](https://truemail-rb.org/truemail-rack). Verify email via Regex, DNS, SMTP and even more. Be sure that email address valid and exists.

> Actual and maintainable documentation :books: for developers is living [here](https://truemail-rb.org/truemail-rack-docker-image).

## Table of Contents

- [Intro](#intro)
- [Usage](#usage)
- [Truemail family](#truemail-family)
- [Contributing](#contributing)
- [License](#license)
- [Code of Conduct](#code-of-conduct)
- [Credits](#credits)
- [Versioning](#versioning)
- [Changelog](CHANGELOG.md)

## Intro

From Ruby gem to microservice, or where did it all begins? Slides [here](https://slides.com/vladislavtrotsenko/truemail-rack).

## Usage

List of [available Truemail server options](https://truemail-rb.org/truemail-rack/#/starting-the-server?id=configurable-options), represented as environment variables. Example of usage with `docker-compose` (Truemail rack image hosted on [dockerhub](https://hub.docker.com/r/truemail/truemail-rack)):

```yml
# docker-compose.yml

version: "3.7"

services:
  truemail:
    image: truemail/truemail-rack:v0.9.0 # for latest version you can use just truemail/truemail-rack:latest
    ports:
      - 9292:9292
    environment:
      VERIFIER_EMAIL: your_email@example.com
      ACCESS_TOKENS: your_token
    tty: true
```

## Truemail family

All Truemail solutions: <https://truemail-rb.org>

| Name | Type | Description |
| --- | --- | --- |
| [truemail](https://github.com/truemail-rb/truemail) | ruby gem | Configurable framework agnostic plain Ruby email validator, main core |
| [truemail-go](https://github.com/truemail-rb/truemail-go) | go package | Configurable Golang email validator, main core |
| [truemail server](https://github.com/truemail-rb/truemail-rack) | ruby app | Lightweight rack based web API wrapper for Truemail |
| [truemail-ruby-client](https://github.com/truemail-rb/truemail-ruby-client) | ruby gem | Truemail web API client library for Ruby |
| [truemail-crystal-client](https://github.com/truemail-rb/truemail-crystal-client) | crystal shard | Truemail web API client library for Crystal |
| [truemail-java-client](https://github.com/truemail-rb/truemail-java-client) | java lib | Truemail web API client library for Java |
| [truemail-rspec](https://github.com/truemail-rb/truemail-rspec) | ruby gem | Truemail configuration and validator RSpec helpers |

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/truemail-rb/truemail-rack-docker-image>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct. Please check the [open tickets](https://github.com/truemail-rb/truemail-rack-docker-image/issues). Be sure to follow Contributor Code of Conduct below and our [Contributing Guidelines](CONTRIBUTING.md).

## License

The image is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Truemail project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Credits

- [The Contributors](https://github.com/truemail-rb/truemail-rack-docker-image/graphs/contributors) for code and awesome suggestions
- [The Stargazers](https://github.com/truemail-rb/truemail-rack-docker-image/stargazers) for showing their support

## Versioning

truemail-rack-docker-image uses [Semantic Versioning 2.0.0](https://semver.org)
