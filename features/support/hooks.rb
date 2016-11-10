require 'watir-webdriver'
require 'cucumber'
require 'capybara/cucumber'
require 'rspec'
require 'pry'
require 'site_prism'


Before do
  @browser = Watir::Browser.new :chrome
  @browser.driver.manage.window.maximize
end

After do
  @browser.close
end