require File.expand_path('../lib/forem/version', __FILE__)
# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = 'forem'
  s.authors = ['Ryan Bigg', 'Philip Arndt', 'Josh Adams']
  s.summary = 'The best Rails forum engine in the world.'
  s.description = 'The best Rails forum engine in the world.'
  s.files = `git ls-files`.split("\n")
  s.version = ::Forem.version

  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails', '~> 6.0', '>= 6.0.2'
  s.add_development_dependency 'rspec-activemodel-mocks', '~> 1.1'
  s.add_development_dependency 'capybara', '~> 3.39', '>= 3.39.1'
  s.add_development_dependency 'jquery-rails'

  s.add_development_dependency 'factory_bot_rails', '~> 6.0'
  s.add_development_dependency 'database_cleaner', '~> 2.0', '>= 2.0.2'
  s.add_development_dependency 'devise', '~> 4.8'
  s.add_development_dependency 'kaminari', '~> 1.2'
  s.add_development_dependency 'timecop', '~> 0.9.6'
  s.add_development_dependency 'sass-rails', '~> 6.0'
  s.add_development_dependency 'coffee-rails', '~> 5.0'

  s.add_dependency 'rails', '~> 7.0'
  s.add_dependency 'simple_form', '~> 5.2'
  s.add_dependency 'sanitize', '~> 6.0', '>= 6.0.1'
  s.add_dependency 'workflow', '~> 3.0'
  s.add_dependency 'gemoji', '= 3.0'
  s.add_dependency  'decorators', path: 'https://github.com/sameersheikh6000/decorators', branch: 'master'
  s.add_dependency 'select2-rails', '~> 4.0', '>= 4.0.13'
  s.add_dependency 'friendly_id', '~> 5.5'
  s.add_dependency 'cancancan', '~> 3.1'
end
