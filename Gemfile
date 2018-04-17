source 'https://rubygems.org'

ruby "2.5.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'

gem 'jbuilder', '~> 2.5'
gem 'faker', '~> 1.8', '>= 1.8.7'

# DB
gem 'pg', '~> 0.21.0'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap', '~> 4.0.0.beta3'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'jquery-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'

# Workers
gem 'sidekiq', '~> 5.0', '>= 5.0.5'

# Auth
gem 'omniauth', '~> 1.6.1'
gem 'omniauth-auth0', '~> 2.0.0'

# Cache
gem 'dalli', '~> 2.7', '>= 2.7.6'

# Markdown
gem 'redcarpet', '~> 3.4'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'factory_bot_rails', '~> 4.8'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end