Then(/^"([0-9]+)" accounts are displayed$/) do |number_accounts|

  #The count is listed under Account Status as well as under Subscription Status. Let's check both.
  count_elements = find_all('.all_accounts span.Facet-option-count')
  count_elements.each do |element|
    expect(element.text).to eq(number_accounts)
  end
end
