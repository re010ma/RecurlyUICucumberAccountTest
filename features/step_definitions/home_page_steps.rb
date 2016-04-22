When(/^I go to the Accounts page$/) do
  within('div.Sidebar') do
    find("a", :text => 'Accounts').click
  end
end
