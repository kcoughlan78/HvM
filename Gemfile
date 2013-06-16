source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3', :require => 'sqlite3'
end

group :production do
  gem 'pg'
end

#gem 'bcrypt-ruby'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

platforms :mswin, :mingw do
  gem 'eventmachine', '1.0.0.beta.4.1'
  gem 'thin'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.1'

# To aid uploading of photos for posts
gem 'carrierwave'
gem 'fog'
gem 'carrierwave_direct'
gem 'sidekiq'

# To aid uploading videos
# gem 'carrierwave-video'
# gem 'streamio-ffmpeg'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
