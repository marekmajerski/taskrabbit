When('I click Sign up button') do
    @login_page = LoginPage.new
    @login_page.sign_up_button.click
  end
  
When('I fill form with random data') do
  @sign_up_page = SignUpPage.new
  @sign_up_page.first_name.set Faker::Name.first_name
  @sign_up_page.last_name.set Faker::Name.last_name
  @sign_up_page.email.set Faker::Internet.email
  @sign_up_page.password.set Faker::Internet.password
  @sign_up_page.zip_code.set Faker::Address.zip_code

end

Then('I click Create account button') do
  @sign_up_page = SignUpPage.new
  @sign_up_page.create_account_button.click
end

