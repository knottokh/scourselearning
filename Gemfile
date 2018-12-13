source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.7'
gem 'sass', '~> 3.6.0' # https://github.com/sass/ruby-sass/issues/94
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', ' ~> 4.2.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails', '6.0.1'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

gem 'activerecord-session_store' #need install
#rails generate active_record:session_migration

gem 'spree', '~> 3.6.4'
gem 'spree_auth_devise', '~> 3.3'
gem 'spree_gateway', '~> 3.3'
#rails g spree:install --user_class=Spree::User
#rails g spree:auth:install
#rails g spree_gateway:install

#gem 'spree-bank-transfer', github: 'knottokh/spree_banktransfer', require: 'spree_bank_transfer'
#bundle exec rails g spree_bank_transfer:install
#gem 'spree_i18n', github: 'spree-contrib/spree_i18n'
#gem 'spree_paypal_express', github: 'spree-contrib/better_spree_paypal_express'
#bundle exec rails g spree_paypal_express:install

gem 'spree_analytics_trackers', github: 'spree-contrib/spree_analytics_trackers'
#bundle exec rails g spree_analytics_trackers:install
gem 'vinsol_spree_themes', github: 'knottokh/spree_theme', branch: 'master'
#gem 'vinsol_spree_themes', github: 'vinsol-spree-contrib/spree_themes', branch: '3-3-stable'
gem 'sprockets-helpers'
#bundle exec rails g vinsol_spree_themes:install
#gem 'activestorage'