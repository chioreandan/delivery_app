source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'
gem 'bootstrap', '4.1.1'
gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem "haml-rails", "~> 1.0"
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'cloudinary', require: false
gem 'activestorage-cloudinary-service'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'cloudinary'
gem 'image_processing', '~> 1.2'
gem 'popper_js', '~> 1.12.9'
gem 'will_paginate', '~> 3.1.0'
gem 'carrierwave'
gem 'mini_magick'
gem 'bcrypt'
gem 'will_paginate-bootstrap4'


group :development, :test do
   gem 'sqlite3', '1.3.13'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.11.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.14.1'
  gem 'guard-minitest', '2.4.6'
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg',  '0.20.0'
  gem 'fog', '1.42'
end
gem 'dotenv-rails', :require => 'dotenv/rails-now'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
