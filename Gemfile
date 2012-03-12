source :rubygems

gemspec

gem 'json'

group :development do
  gem 'rake'
  gem 'bluecloth'
  gem 'yard'
  gem 'awesome_print'

  gem 'rbx-require-relative', "0.0.5", :platforms => :ruby_18 # ruby-debug gem requirements are broken for Ruby 1.8
  gem 'ruby-debug', ">= 0.10", :platforms => :ruby_18

  gem 'linecache19', '>= 0.5.13', :platforms => :ruby_19
  gem 'ruby-debug-base19', '>= 0.11.26', :platforms => :ruby_19
  gem 'ruby-debug19', '>= 0.11.6', :platforms => :ruby_19
end

group :test do
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent'
  gem 'growl'
  gem 'rcov', :require => nil
  gem 'ci_reporter', '~>1.6.3', :require => nil
  gem 'sham_rack'
  gem 'sinatra' # for sham_rack
end