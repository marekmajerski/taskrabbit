Then('I see Client Main Page') do
  @client_main_page = ClientMainPage.new
  expect(@client_main_page).to have_account_button
end


