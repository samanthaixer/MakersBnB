# frozen_string_literal: true

source "https://rubygems.org"

ruby '2.5.0'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'json'
gem 'pg'
gem 'rack'
gem 'rake'
gem 'rerun'
gem 'sinatra'
gem 'selenium-webdriver'

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'rspec'
  gem 'rspec-json_expectations'
  gem 'rubocop', '0.56.0'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
