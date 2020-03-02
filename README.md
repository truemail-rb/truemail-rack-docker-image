# <img src='https://repository-images.githubusercontent.com/243022570/c3ae4600-57ef-11ea-9cb1-73cb7b0d580c' height='250' alt='Truemail lightweight rack based web API docker image' />

***Truemail rack docker image*** :whale: - lightweight rack based web API dockerized image for [Truemail server](https://github.com/truemail-rb/truemail-rack). Verify email via Regex, DNS and SMTP. Be sure that email address valid and exists.

## Table of Contents

- [Usage](#usage)
- [Truemail family](#truemail-family)
- [Contributing](#contributing)
- [License](#license)
- [Code of Conduct](#code-of-conduct)
- [Credits](#credits)
- [Versioning](#versioning)
- [Changelog](CHANGELOG.md)

## Usage

List of [available Truemail server options](https://github.com/truemail-rb/truemail-rack/blob/master/README.md#usage), represented as environment variables. Example of usage with docker-compose:

```yml
# docker-compose.yml

version: "3.7"

services:
  truemail:
    image: truemail/truemail-rack:v0.2.1
    ports:
      - 9292:9292
    environment:
      VERIFIER_EMAIL: your_email@example.com
      ACCESS_TOKENS: your_token
    tty: true
```

## Truemail family

All Truemail extensions: https://github.com/truemail-rb

### truemail

gem `truemail` - configurable framework agnostic plain Ruby email validator, https://github.com/rubygarage/truemail

### truemail server

Lightweight rack based web API wrapper for Truemail, https://github.com/truemail-rb/truemail-rack

### truemail-rspec

gem `truemail-rspec` - Truemail configuration and validator RSpec helpers, https://github.com/truemail-rb/truemail-rspec

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/truemail-rb/truemail-rack-docker-image. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct. Please check the [open tikets](https://github.com/truemail-rb/truemail-rack-docker-image/issues). Be shure to follow Contributor Code of Conduct below and our [Contributing Guidelines](CONTRIBUTING.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Truemail project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](CODE_OF_CONDUCT.md).

## Credits

- [The Contributors](https://github.com/truemail-rb/truemail-rack-docker-image/graphs/contributors) for code and awesome suggestions
- [The Stargazers](https://github.com/truemail-rb/truemail-rack-docker-image/stargazers) for showing their support

## Versioning

Truemail uses [Semantic Versioning 2.0.0](https://semver.org)
