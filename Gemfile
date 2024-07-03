source "https://rubygems.org"

ruby "3.3.3"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]
gem "bootsnap", require: false
gem 'sassc-rails'
gem 'slim-rails'
gem 'simple_form' # rails generate simple_form:install
gem "devise" # rails generate devise:install

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
end

group :development do
  gem "web-console"

end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "rspec-rails"# rails generate rspec:install
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
