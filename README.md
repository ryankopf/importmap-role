# Importmap::Role

Welcome to `importmap-role`, a gem designed to dynamically generate importmaps in Rails applications based on user roles. This gem allows the definition of role-specific JavaScript files in separate importmap configuration files. These configurations are then combined server-side depending on the authenticated user's role and served dynamically, enabling client-side updating of importmaps.

## Installation

To install the gem, add it to your application's Gemfile:

    gem 'importmap-role', '~> 1.0'

And then execute:

    bundle install

Alternatively, you can install it yourself as:

    gem install importmap-role

## Usage

After installing the gem, you can set up role-specific importmaps in your Rails application. Create importmap configuration files for each user role in the `config/importmaps` directory, like `admin.rb` for administrators.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/importmap-role. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/importmap-role/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Importmap::Role project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/importmap-role/blob/master/CODE_OF_CONDUCT.md).
