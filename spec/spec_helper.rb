require_relative './setup_test_database'

ENV['ENVIROMENT'] = 'test'


RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './spec/features/web_helpers.rb'

Capybara.app = BookmarkManager

