source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.3.0'
end

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# To use ActiveModel has_secure_password and NEEDS the 3.0.0 with it
gem 'bcrypt-ruby'

# Use unicorn as the app server
#gem 'unicorn'

# Deploy with Capistrano
group :development do
	gem 'capistrano', '~> 3.1'
#gem 'rvm-capistrano', '~> 1.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-bundler', '~>1.1'
  gem 'capistrano-rvm', '~>0.1'
end

gem 'rails_12factor', group: :production
# To use debugger
# gem 'debugger'

# To use rspec for testing instead of test:unit
gem 'rspec-rails', group: [:development, :test]

gem 'capybara', group: [:development, :test]

gem 'factory_girl_rails', group: [:development, :test]

gem 'cucumber-rails', require: false, group: [:development, :test]

gem 'database_cleaner', group: :test

gem 'will_paginate'
gem 'bootstrap-will_paginate'

gem 'figaro'

gem 'bootstrap-sass'

gem 'annotate', group: :development

gem 'simple_form'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'jquery-datatables-rails', git: 'https://github.com/rweng/jquery-datatables-rails.git'

ruby "2.0.0"

