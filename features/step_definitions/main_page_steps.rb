require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http

require_relative '../support/test_site.rb' 

When('I navigate to the home page') do
  @main = Main.new
  @main.load
  @main.displayed?(10)
end
