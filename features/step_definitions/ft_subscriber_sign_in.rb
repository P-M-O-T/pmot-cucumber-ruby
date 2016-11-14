Given(/^I am on the "([^"]*)" page$/) do |arg|
  @browser.goto "https://accounts.ft.com/login"
end

When(/^I fill in "([^"]*)" field with "([^"]*)"$/) do |field_name, value|
  case field_name
    when "email address"
    @browser.text_field(:name => 'email').set(value)
    when "my password"
    @browser.text_field(:name => 'password').set(value)
    else
    puts "invalid field name"
  end
end

And(/^I click "([^"]*)" button$/) do |button|
  @browser.element(:css => '#submit-btn').click
end

Then(/^I should be logged in successfully$/) do
  Capybara.default_max_wait_time = 5
  expect(@browser.url) == 'http://www.ft.com'
end

And(/^I should see My Account$/) do
  result = true if @browser.should have_css('#o-header-nav-desktop [data-trackable = "My Account"]')
  expect(result).to be true
end

And(/^I should see "([^"]*)"$/) do |text|
  result = true if @browser.text.include? text
  expect(result).to be true
end