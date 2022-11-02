When('I navigate to the home page') do
  @main_page = MainPage.new
  @main_page.load
  @main_page.displayed?(10)
end
