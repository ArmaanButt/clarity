source 'https://rubygems.org'

gem 'bootstrap-sass'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# ISSUE with gem coffee script for windows, doesnt work unless its 1.8.0
gem 'coffee-script-source', '1.8.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise'
# Simple Form aims to be as flexible as possible while helping you with powerful components to create your forms.
gem 'simple_form'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite as the database for Active Record
  gem 'sqlite3'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page
  gem "better_errors"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Preview email in the default browser instead of sending it
  gem "letter_opener"
  # Avoid repeating yourself, use pry-rails instead of copying the initializer to every rails project
  gem 'pry-rails'

end

group :production do
  # Use mysql as the database for Active Record
  gem 'mysql2', '>= 0.3.13', '< 0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
