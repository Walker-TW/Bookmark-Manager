ENV['APP_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './spec/features/web_helpers.rb'

Capybara.app = BookmarkManager
