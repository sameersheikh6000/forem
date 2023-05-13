source "https://rubygems.org"

gem 'forem-theme-base', git: "https://github.com/radar/forem-theme-base", branch: "master"

gemspec

gem 'pry-rails'
gem 'pry-nav'
gem 'select2-rails', '~> 4.0', '>= 4.0.13'

platforms :jruby do
  gem "activerecord-jdbc-adapter", :require => false
end

group :test do
  platforms :ruby, :mingw do
    gem "forem-redcarpet"
    gem "mysql2", "~> 0.5"
    gem "pg", "~> 1.5"
    gem "sqlite3", "~> 1.4"
  end

  platforms :jruby do
    gem "activerecord-jdbcmysql-adapter", :require => false
    gem "activerecord-jdbcpostgresql-adapter", :require => false
    gem "activerecord-jdbcsqlite3-adapter", :require => false
    gem "forem-kramdown", :github => "phlipper/forem-kramdown", :branch => "master"
  end
end

if RUBY_VERSION < '1.9.2'
  gem 'nokogiri', '~> 1.11.5'
end
