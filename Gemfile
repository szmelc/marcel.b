source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 6.0.0'

gem 'activeadmin'
# gem 'activeadmin-globalize', '~> 1.0.0.pre'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bourbon'
gem 'carrierwave', '~> 2.0'
gem 'coffee-rails'
gem 'country_select', '~> 4.0'
gem 'decent_decoration'
gem 'decent_exposure', '3.0.0'
gem 'devise'
gem 'draper'
gem 'flattened_active_admin'
gem 'fog-aws'
gem 'haml-rails'
gem 'jbuilder', '~> 2.7'
gem 'jquery-rails'
gem 'jquery-slick-rails'
gem 'lightbox2-rails'
gem 'sass-rails', '~> 5'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

# gem 'image_processing', '~> 1.2'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'shoulda-matchers'
end

group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
