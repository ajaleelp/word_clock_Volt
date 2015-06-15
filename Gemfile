source 'https://rubygems.org'

gem 'volt', '0.9.3'

# The following gem's are optional for themeing
# Twitter bootstrap
gem 'volt-bootstrap', '~> 0.0.10'

# Simple theme for bootstrap, remove to theme yourself.
gem 'volt-bootstrap_jumbotron_theme', '~> 0.1.0'

# User templates for login, signup, and logout menu.
gem 'volt-user_templates', '~> 0.1.3'

# Use rbnacl for message bus encrpytion
# (optional, if you don't need encryption, disable in app.rb and remove)
gem 'rbnacl', require: false
gem 'rbnacl-libsodium', require: false

# Asset compilation gems, they will be required when needed.
gem 'csso-rails', '~> 0.3.4', require: false
gem 'uglifier', '>= 2.4.0', require: false

gem 'volt-mongo'

group :development, :test do
  # Testing dependencies
  gem 'rspec', '~> 3.2.0'
  gem 'opal-rspec', '~> 0.4.2'
  gem 'capybara', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.43.0'
  gem 'chromedriver2-helper', '~> 0.0.8'
  gem 'poltergeist', '~> 1.5.0'
end

# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end
