class LoginPage < SitePrism::Page
    set_url '/login?source=header'

    element :sign_up_button, :xpath, '//button[@data-ref="sign-up"]'
  end
