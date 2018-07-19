source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'webpacker'
gem 'bootsnap', '>= 1.1.0', require: false

# Geo
gem 'geokit-rails'
gem 'countries'

# API Staff
gem 'responders'
gem 'active_model_serializers', '~> 0.10.0'

# API Documentation
gem 'apitome', git: 'https://github.com/jejacks0n/apitome.git', ref: '8fbf5aa'
gem 'rspec_api_documentation'


group :development, :test do
  gem 'rails_dt'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem 'timecop'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'database_flusher'
  gem 'nyan-cat-formatter'
  gem 'webmock'
  gem 'simplecov', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
