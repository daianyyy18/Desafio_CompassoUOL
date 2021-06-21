require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
  #selenium   selenium_chrome   selenium_chrome_headless
  config.default_driver= :selenium_chrome
  config.app_host= 'http://automationpractice.com'
  config.default_max_wait_time = 5
end

