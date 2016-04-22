Given(/^I log in as "(.*?)" with password "(.*?)"$/) do |email, password|
  visit 'https://app.recurly.com/login'
  find('input[id="user_email"]').set(email)
  find('input[id="user_password"]').set(password)
  find('button[id="submit_button"]').click
end


