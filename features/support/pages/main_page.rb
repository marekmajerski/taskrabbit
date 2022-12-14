require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

class MainPage < SitePrism::Page
    set_url ''

    element :menu, 'header__menu-toggle ss-icon ss-lnr-menu u-hidden--lg u-pull-left'
    
    element :login_button, :xpath, '//span[text()="Sign up / Log in"]', match: :last
    element :locations_button, ''
    element :services_button, ''
    element :become_a_tasker_button, '.tasker-signup-btn'
    element :account_button, :xpath, '//span[text()="Account"]', match: :first
  end
