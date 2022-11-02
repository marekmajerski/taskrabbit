unless ENV['CI']
    require 'simplecov'
    require 'dotenv'
    Dotenv.load('.env')
  end
  
  require 'capybara'
  require 'capybara/dsl'
  require 'capybara/cucumber'
  require "allure-rspec"
  require 'selenium-webdriver'
  require 'site_prism'
  require 'pry'
  
  $LOAD_PATH << './lib'
  
  require 'site_prism'
  
  Capybara.register_driver :selenium do |app|
    browser = (ENV['browser'] || 'headless').to_sym
    Capybara::Selenium::Driver.new(app, browser: browser)
  end

  Capybara.register_driver :chrome do |app|
    browser = ENV.fetch('browser', 'chrome').to_sym
    Capybara::Selenium::Driver.new app, browser: browser
  end

  Capybara.register_driver :headless do |app|
    Capybara::Selenium::Driver.new app, browser: :chrome,
      options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
  end

  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new app, browser: :firefox
  end

  Capybara.register_driver :safari do |app|
    Capybara::Selenium::Driver.new app, browser: :safari
  end

  Capybara.configure do |config|
    config.default_driver = :chrome
    config.default_max_wait_time = 2
    config.ignore_hidden_elements = false
    config.app_host = 'https://us-staging-1.taskrabbit.in'
  end
  
  After do |scenario|
    if scenario.failed?
      path = "html-report/#{scenario.__id__}.png"
      page.driver.browser.save_screenshot(path)
      attach(path, "image/png")
    end
  end
