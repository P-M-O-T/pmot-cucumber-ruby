require 'watir-webdriver'
require 'cucumber'
require 'capybara/cucumber'
require 'rspec'
require 'pry'

Before do
  @browser = Watir::Browser.new :chrome
end

After do
  @browser.close
end