# features/support/tags.rb

Before('@iphone') do
    Capybara.current_driver = :iphone
  end
  
  After('@iphone') do
    Capybara.use_default_driver 
  end
