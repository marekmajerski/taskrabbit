require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require 'faraday'
require 'faraday/net_http'
Faraday.default_adapter = :net_http

require_relative '../support/test_site.rb' 

When('I click Sign up button') do
    @login = Login.new
    @login.sign_up_button.click
  end
  
  When('I fill form with random data') do
    @sign_up = SignUp.new
    @sign_up.first_name.set Faker::Name.first_name
    @sign_up.last_name.set Faker::Name.last_name
    @sign_up.email.set Faker::Internet.email
    @sign_up.password.set Faker::Internet.password
    @sign_up.zip_code.set Faker::Address.zip_code
  end  
  
  Then('I click Create account button') do
    puts "do not wanna create fake account on PROD"
  end

