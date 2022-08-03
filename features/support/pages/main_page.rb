require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'
require_relative '../test_site.rb' 


class Main < SitePrism::Page
    set_url 'http://www.taskrabbit.com'

    element :login_button, :xpath, '//span[text()="Sign up / Log in"]', match: :last
    element :menu, 'header__menu-toggle ss-icon ss-lnr-menu u-hidden--lg u-pull-left'
  end
