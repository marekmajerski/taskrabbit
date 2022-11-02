require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there'

class ClientMainPage < SitePrism::Page
    set_url '/account'

    element :menu, 'header__menu-toggle ss-icon ss-lnr-menu u-hidden--lg u-pull-left'
    element :account_button, :xpath, '//span[text()="Account"]', match: :first
  end
