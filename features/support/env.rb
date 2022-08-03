unless ENV['CI']
    require 'simplecov'
    require 'dotenv'
    Dotenv.load('.env')
  end
  
  require 'capybara'
  require 'capybara/dsl'
  require 'capybara/cucumber'
  require 'selenium-webdriver'
  require 'site_prism'
  require 'pry'
  
  $LOAD_PATH << './lib'
  
  require 'site_prism'
  
  Capybara.register_driver :selenium do |app|
    browser = ENV.fetch('browser', 'chrome').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser)
  end
  
  Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.ignore_hidden_elements = false
  end
  
  After do |scenario|
     if scenario.failed?
       save_screenshot
     end
  end
