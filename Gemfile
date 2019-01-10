source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '5.2.1.1'                                # Ruby on Rails is a full-stack web framework
gem 'bootsnap'
gem 'puma', '~> 3.11', '>= 3.12.0'                    # Webserver recommended by heroku
gem 'uglifier', '~> 4.1', '>= 4.1.20'                 # Ruby wrapper for UglifyJS JavaScript compressor
gem 'autoprefixer-rails', '~> 9.3.1'                  # Parse CSS and add vendor prefixes to CSS rules
gem 'bootstrap-select-rails', '~> 1.12', '>= 1.12.4'  # jQuery plugin that utilizes Bootstrap's dropdown.js to style
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.47'   # Calendar date picker
gem 'browser', '~> 2.5', '>= 2.5.3'                   # Easy browser make/version detection. See documentation at https://github.com/fnando/browser
gem 'carrierwave', '~> 1.0'                           # Gem provides a simple and extremely flexible way to upload files
gem 'devise', '~> 4.4', '>= 4.5.0'                    # User authentication for users
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'      # http://fontawesome.io/get-started/ for icons
gem 'jquery-rails', '~> 4.3.3'                        # JQuery
gem 'jquery-ui-rails', '~> 6.0.1'                     # JQuery UI
gem 'momentjs-rails', '~> 2.17.1'                     # Necessary for datepicker
gem 'nokogiri', '~> 1.8', '>= 1.8.5'                  # HTML and XML Parser
gem 'omniauth', '~> 1.8', '>= 1.8.1'                  # Needed for signups
gem 'omniauth-google-oauth2', '~> 0.5.2'              # Google specific omnioauth support
gem 'parallax-rails'                                  # Need for parallax effect
gem 'pg', '~> 0.21.0'                                 # Postgres gem
gem 'pg_search', '~> 2.1.2'                           # Implement fast text search in Postgres
gem 'premailer-rails', '~> 1.10', '>= 1.10.2'         # In-lines stylesheets and rewrite relative URLs in emails
gem 'qtip2-jquery-rails', '~> 2.2.100'                # Provides the qTip2 jQuery plugin for the Rails asset pipeline
gem 'sqlite3', '~> 1.3', '>= 1.3.11'                  # SQlite gem
gem 'redis', '4.0.1'                                  # A Ruby client that tries to match Redis' API one-to-one
gem 'redis-rails', '5.0.2'                            # Gem for redis cache
gem 'rubyzip', '~> 1.2.1'                             # Zip up files (for large email attachments)
gem 'sass-rails', '~> 5.0', '>= 5.0.7'                # Needed for rails deploys on heroku
gem 'sidekiq', '~> 5.1', '>= 5.2.3'                   # Background processing library
gem 'sidekiq-failures', '~> 1.0'                      # Track sidekiq failures in web ui
gem 'sinatra', '~> 2.0', '>= 2.0.4'                   # Microframework, used for sidekiq ui
gem 'sprockets', '~> 3.7', '>= 3.7.2'                 # rails-asset-pipeline
gem 'sprockets-rails', '~> 3.2.1'                     # Sprockets Rails integration
gem 'webpacker', '~> 3.5'                             # Webpacker gem to manage JS like modules
gem 'will_paginate', '~> 3.1.0'                       # Pagination gem

group :development, :test do
  gem 'awesome_print', '~> 1.8'                       # Nicely formatted data structures in console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_bot_rails', '~> 4.8', '>= 4.8.2'       # Test data generator -- see spec/factories/factories.rb
  gem 'faker', '~> 1.8', '>= 1.9.1'                   # Easy way to add fake data: names, email addresses, etc.
  gem 'rails-controller-testing', '~> 1.0.2'          # Extracting `assigns` and `assert_template` from ActionDispatch
  gem 'select2-rails', '4.0.3'                        # Select2 is a javascript library of select box enhancer for jQuery. This gem integrates Select2 with Rails asset pipeline for easy of use.

end

group :development do
  gem 'letter_opener', '~> 1.6'                       # Match emails in dev env
  gem 'letter_opener_web', '~> 1.3.4'                 # GUI for letter_opener
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'meta_request', '~> 0.6.0'                      # Sends backend meta info to Chrome plugin (requires install of https://chrome.google.com/webstore/detail/railspanel/gjpfobpafnhjhbajcjgccbbdofdckggg?hl=en-US)
  gem 'parallel_tests', '~> 2.21', '>= 2.27.0'        # Run tests in parallel
  gem 'rubocop', '~> 0.60.0', require: false          # A Ruby static code analyzer https://github.com/bbatsov/rubocop
  gem 'spring'                                        # Spring speeds up development by keeping application running in the background
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'traceroute', '~> 0.8.0'                        # Allows for easy searching of unused routes - "$ rake traceroute"
  gem 'web-console', '~> 3.7.0'                       # Access an IRB console on exceptions page/console
end

group :test do
  gem 'capybara', '>= 2.15'                           # Adds support for Capybara system testing
  gem 'chromedriver-helper'                           # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'database_cleaner', '~> 1.6', '>= 1.7.0'        # Database_cleaner is not required, but highly recommended
  gem 'rspec-html-matchers', '~> 0.9.1'               # For testing complex html output, useful for testing forms
  gem 'rspec-rails', '~> 3.8', '>= 3.8.1'             # Testing framework for Rails
  gem 'selenium-webdriver', '~> 3.141.0'              # WebDriver is a tool for writing automated tests of websites
  gem 'shoulda-callback-matchers', '~> 1.1.4'         # Matchers to test before, after and around hooks
  gem 'shoulda-matchers', '~> 3.1.2'                  # Collection of testing matchers extracted from Shoulda http://thoughtbot.com/community
  gem 'timecop', '~> 0.9.1'                           # Set system time for tests
end
