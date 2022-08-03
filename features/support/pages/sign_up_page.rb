require 'capybara'
require 'faker'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require_relative '../test_site.rb' 

class SignUp < SitePrism::Page
    set_url 'https://www.taskrabbit.com/signup/password'

    element :first_name, '#first_name'
    element :last_name, '#last_name'
    element :email, '#email'
    element :password, '#password'
    element :zip_code, '#postal_code'
  end
