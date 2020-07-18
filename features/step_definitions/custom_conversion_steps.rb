Then('I press on Create your first conversion button') do
  sleep 2
  find_element(id: "btn_new_custom_conversion").click
  sleep 2
end

Then('I type {string} as custom conversion name') do |string|
  find_element(id: "edit_custom_conversion_category_name").send_keys(string)
  sleep 5
end

When('I press on New unit button') do
  find_element(id: "com.ba.universalconverter:id/btn_new_custom_unit").click
end

When('I type {string} as unit name') do |unit_name|
  sleep 2
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
  sleep 2
end

When('I type {string} as unit symbol') do |symbol_name|
  sleep 2
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol_name)
  sleep 2
end

When('I type {string} as unit value') do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then('i press submit checkmark on custom conversion screen') do
  sleep 2
  find_element(id: "action_confirm_custom_unit").click
  sleep 5
end

Then('i press the OK button on the custom conversion screen') do
  sleep 2
  find_element(id: "btn_unit_dtls_ok").click
end

Then('I verify {string} added to Custom conversions list') do |string|
  find_element(id: "com.ba.universalconverter:id/custom_category_item_name").text == string
end

And(/^I press OK button on custom conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_OK").click
end

Then('i press final submit checkmark on custom conversion screen') do
  sleep 2
  find_element(id: "com.ba.universalconverter:id/action_confirm_custom_category").click
  sleep 5
end
