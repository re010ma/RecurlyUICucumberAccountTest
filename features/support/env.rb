require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'capybara/session'
require 'selenium-webdriver'
require 'pry-nav'

Bundler.require :test
require_relative 'cucumber_hooks'

def print_error
  puts "\nInappropraite browser \"#{ENV['BROWSER']}\""
  puts "\nUsage : cucumber BROWSER=browser_name"
  puts "\nbrowser_name can be one of following :"
  puts "1.ie\n2.chrome\n3.ff\n4.safari\n5.opera"
  puts "\nNow using default browser \"Firefox\""
end

case ENV['BROWSER']
  when 'ie'
    browser_type = :ie
  when 'ff'
    browser_type = :ff
  when 'chrome'
    browser_type = :chrome
  when 'opera'
    browser_type = :opera
  when 'safari'
    browser_type = :safari
  else
    if ENV['BROWSER']
      print_error
    end
    browser_type = :ff
end

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => browser_type)
end

Capybara.default_selector = :css
Capybara.javascript_driver = browser_type
Capybara.run_server = false

World(Capybara)