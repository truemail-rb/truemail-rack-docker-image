# <img src='https://repository-images.githubusercontent.com/243022570/c3ae4600-57ef-11ea-9cb1-73cb7b0d580c' height='250' alt='Truemail lightweight rack based web API docker image' />

[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/truemail/truemail-rack)](https://hub.docker.com/r/truemail/truemail-rack/builds) [![Docker Image Version](https://img.shields.io/docker/v/truemail/truemail-rack)](https://hub.docker.com/r/truemail/truemail-rack/builds) ![Docker Image Size](https://img.shields.io/docker/image-size/truemail/truemail-rack) ![Docker Pulls](https://img.shields.io/docker/pulls/truemail/truemail-rack) [![GitHub](https://img.shields.io/github/license/truemail-rb/truemail-rack-docker-image)](LICENSE.txt) [![Gitter](https://badges.gitter.im/truemail-rb/community.svg)](https://gitter.im/truemail-rb/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

***Truemail rack docker image*** :whale: - lightweight rack based web API dockerized image of [Truemail server](https://github.com/truemail-rb/truemail-rack). Verify email via Regex, DNS and SMTP. Be sure that email address valid and exists.

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

List of [available Truemail server options](https://github.com/truemail-rb/truemail-rack/blob/master/README.md#usage), represented as environment variables. Example of usage with docker-compose (Truemail rack image hosted on [dockerhub](https://hub.docker.com/r/truemail/truemail-rack)):

```yml
# docker-compose.yml

version: "3.7"

services:
  truemail:
    image: truemail/truemail-rack:v0.2.6
    ports:
      - 9292:9292
    environment:
      VERIFIER_EMAIL: your_email@example.com
      ACCESS_TOKENS: your_token
    tty: true
```

## Truemail family

All Truemail extensions: https://github.com/truemail-rb

| Name | Type | Description |
| --- | --- | --- |
| [truemail](https://github.com/rubygarage/truemail) | ruby gem | Configurable framework agnostic plain Ruby email validator, main core |
| [truemail server](https://github.com/truemail-rb/truemail-rack) | ruby app | Lightweight rack based web API wrapper for Truemail |
| [truemail-ruby-client](https://github.com/truemail-rb/truemail-ruby-client) | ruby gem | Truemail web API client library for Ruby |
| [truemail-crystal-client](https://github.com/truemail-rb/truemail-crystal-client) | crystal shard | Truemail web API client library for Crystal |
| [truemail-rspec](https://github.com/truemail-rb/truemail-rspec) | ruby gem | Truemail configuration and validator RSpec helpers |

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/truemail-rb/truemail-rack-docker-image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct. Please check the [open tikets](https://github.com/truemail-rb/truemail-rack-docker-image/issues). Be shure to follow Contributor Code of Conduct below and our [Contributing Guidelines](CONTRIBUTING.md).

## License

The image is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Truemail project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Credits

- [The Contributors](https://github.com/truemail-rb/truemail-rack-docker-image/graphs/contributors) for code and awesome suggestions
- [The Stargazers](https://github.com/truemail-rb/truemail-rack-docker-image/stargazers) for showing their support

## Versioning

Truemail uses [Semantic Versioning 2.0.0](https://semver.org)
