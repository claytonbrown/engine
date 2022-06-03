source :rubygems

# add in all the runtime dependencies

gem 'rake', '12.3.3'

gem 'rails', '5.0.0'

gem 'warden', '>= 1.1.0'
gem 'devise', '~> 1.5.3'
gem 'devise_bushido_authenticatable', '1.0.0', :require => 'devise_cas_authenticatable'

gem 'mongo', '~> 1.3.1'
gem 'bson', '~> 3.0.4'
gem 'bson_ext', '~> 1.3.1'
gem 'mongoid', '~> 6.0.0'
gem 'locomotive_mongoid_acts_as_tree', '0.1.5.8', :require => 'mongoid_acts_as_tree'
gem 'kaminari', '>= 1.2.1'

gem 'haml', '5.0.0'
gem 'sass', '3.1.2'
gem 'locomotive_liquid', '2.2.2', :require => 'liquid'
gem 'formtastic', '~> 1.2.4'
gem 'inherited_resources', '~> 1.1.2'

gem 'rmagick', '2.12.2', :require => 'RMagick'
gem 'carrierwave', '1.0.0'
gem 'dragonfly', '~> 0.9.9'
gem 'rack-cache', '>= 1.2', :require => 'rack/cache'

gem 'custom_fields', '2.10.0'
gem 'cancan'
gem 'fog', '1.5.0'
gem 'mimetype-fu'
gem 'actionmailer-with-request', '>= 0.3.0', :require => 'actionmailer_with_request'
gem 'heroku', '3.99.4'
gem 'httparty', '0.10.0'
gem 'RedCloth', '4.3.0'
gem 'delayed_job_mongoid', '2.1.0'
gem 'rubyzip', '>= 1.3.0'
gem 'locomotive_jammit-s3', :require => 'jammit-s3'
gem 'SystemTimer', :platforms => :ruby_18
gem 'cells', '3.8.7'
gem 'sanitize', '>= 4.6.3'
gem 'highline'

# The rest of the dependencies are for use when in the locomotive dev environment

group :development do
  gem 'unicorn' , '>= 4.1.1' # Using unicorn_rails instead of webrick (default server)

  gem 'rspec-rails', '2.8.0' # in order to have rspec tasks and generators

  gem 'rspec-cells', '>= 0.1.3'
end

group :test, :development do
  gem 'linecache', '0.43', :platforms => :mri_18
  gem 'ruby-debug', :platforms => :mri_18
  gem 'ruby-debug19', :platforms => :mri_19

  gem 'bushido_stub', '0.0.3'
end

group :test do
  gem 'cucumber-rails', '1.2.0', :require => false
  gem 'autotest', :platforms => :mri
  gem 'ZenTest', :platforms => :mri
  gem 'growl-glue'
  gem 'rspec-rails', '2.8.0'
  gem 'factory_girl_rails', '~> 1.3.0'
  gem 'pickle', '>= 0.4.10'
  gem 'xpath', '~> 0.1.4'
  gem 'capybara', '>= 1.1.2'
  gem 'database_cleaner'
  gem 'shoulda-matchers'

  gem 'spork', '~> 0.9.0.rc'
  gem 'launchy', '>= 0.3.7'
  gem 'mocha', '0.9.12' # :git => 'git://github.com/floehopper/mocha.git'
end

group :production do
  gem 'bushido', '0.0.35'
end

