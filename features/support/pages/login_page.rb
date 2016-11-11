class LoginPage < SitePrism::Page

  element :submit_button, :css => '#submit-btn'

  def select_submit_btn(button)
    @browser.element(:css => '#submit-btn').click()
  end

  def successful_login(field_name, value)
    case field_name
      when "email address"
        @browser.text_field(:name => 'email').set(value)
      when "my password"
        @browser.text_field(:name => 'password').set(value)
      else
        puts "invalid field name"
    end
  end

end

