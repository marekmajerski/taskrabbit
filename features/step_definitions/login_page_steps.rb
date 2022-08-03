require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http

require_relative '../support/test_site.rb' 

When('I open Login page') do
  @login = Login.new
  @login.load
end
