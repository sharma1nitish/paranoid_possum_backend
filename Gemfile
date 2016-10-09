source 'https://rubygems.org'

ruby '2.3.1'

# Stack
gem 'rails', '~> 5.0.0'
gem 'puma', '~> 3.0'
gem 'pg'
gem 'foreman'
gem 'rack-canonical-host'
gem 'rack-cors'
gem 'rack-rewrite'
gem 'uglifier'

# Auth
gem 'devise'
gem 'cancancan'

# API
gem 'grape'
gem 'hashie-forbidden_attributes'
gem 'grape-kaminari'
gem 'grape-batch'

# Admin
gem 'activeadmin', github: 'activeadmin'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'

# Uploads
gem 'fog'
gem 'carrierwave'
gem 'mini_magick'

# Serializer
gem 'active_model_serializers', github: 'jayshreeanand/active_model_serializers', branch: '0-9-stable'
gem 'grape-active_model_serializers'

# Console
gem 'awesome_print'

# Misc
gem 'exception_notification'
gem 'httparty'

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'better_errors'
  gem 'pry'
  gem 'binding_of_caller'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false, github: 'thoughtbot/shoulda-matchers'
  gem 'capybara'
end

group :development, :test do
  gem 'rspec-rails'

  gem 'guard'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard', require: false # Shows test alerts in OS X 10.8 Notification Center

  gem 'letter_opener'
end

group :development, :test, :staging do
  gem 'ffaker'
end

# Logging
group :production, :staging do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
