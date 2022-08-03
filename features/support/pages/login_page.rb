class Login < SitePrism::Page
    set_url 'https://www.taskrabbit.com/login?source=header'

    element :sign_up_button, :xpath, '//button[@data-ref="sign-up"]'
  end
