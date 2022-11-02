require 'capybara'
require 'faker'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

class SignUpPage < SitePrism::Page
    set_url '/signup/password'

    element :first_name, '#first_name'
    element :last_name, '#last_name'
    element :email, '#email'
    element :password, '#password'
    element :zip_code, '#postal_code'
    element :create_account_button, '[data-ref="submit-signup"]'
  end
