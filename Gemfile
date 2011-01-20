source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'devise', :git => 'git://github.com/plataformatec/devise.git' #, :ref=>'b942520dc4f'#, :tag=>'v1.2.rc'#,#'1.1.5'
#gem "oa-oauth", :require => "omniauth/oauth"
gem "omniauth", :path => '/Users/eric/Coding/Consulting/MANA/MetaForm/git/omniauth'#, :ref => '260db431764acd7f28ea501916cb72e00d6fc2ef' #:git => 'git://github.com/zippy/omniauth.git'

group :test, :development do
    gem 'rspec-rails', "~> 2.4"
    gem "autotest"
end

group :cucumber do
    gem 'capybara'
    gem 'database_cleaner'
    gem 'cucumber-rails'
    gem 'cucumber'
    gem 'spork'
    gem 'launchy'
end

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
gem 'ruby-debug'
