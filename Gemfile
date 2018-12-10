source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'devise-jwt'
gem 'dotenv-rails'
gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do
	gem 'pry'
	gem 'listen'
	gem 'rspec-rails'
	gem 'factory_bot_rails'
end

group :test do
	gem 'faker'
	gem 'rspec_json_schema_matcher'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
