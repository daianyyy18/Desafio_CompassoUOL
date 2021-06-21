module Pages
    class LoginPage < SitePrism::Page
      set_url '/index.php?controller=authentication&back=my-account'

      element  :breadcrumb, '#breadcrumb clearfix'
      element  :input_create_account_email, '#email_create'
      element  :btn_create_an_account, '#email_create'
      element  :input_login_email, '#email'
      element  :input_login_password, '#passwd'
      element  :link_forgot_password, '#lost_password form-group'
      element  :btn_sign_in, '#SubmitLogin'
      element  :alert_message_authentication_failed, '#alert alert-danger'

      def preencher_login
        input_login_email.set 'daianyyy18@gmail.com'
        input_login_password.set '246810'
      end
      def clicar_login
        btn_sign_in.click
      end
    end
  end










