require 'capybara/dsl'
require 'capybara/cucumber'

Before do |scenario|

end

After do |scenario|

  # Close all web browser windows
  page.driver.browser.window_handles.each do |handle|
    page.driver.browser.switch_to.window(handle)
    page.execute_script "window.close()"
  end

end
