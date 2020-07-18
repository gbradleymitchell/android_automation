Then('left unit picker value should be in {string}') do |string|
  actual_picker_text = find_element(id: "select_unit_spinner").text
  if actual_picker_text != string
    fail("expectd "+ string + " but found " + actual_picker_text)
  end
end

Then('right unit value should be in {string}') do |string|
  actual_right_picker_text = find_elements(id: "select_unit_spinner")[1].text
  if actual_right_picker_text != string
    fail("expected "+string+" but found "+actual_right_picker_text)
  end
end

Then('Show All button should be {string}') do |string|
  button_state = find_element(id: "btn_show_all").enabled?
  if string == "enabled"
    fail("button expected to be enabled, but was not") if button_state != true
  elsif string == "disabled"
    fail("button expected to be disabled, but was not") if button_state != false
  end
end

When('I press on Clear button') do
  find_element(id: "content_dtls_frame").find_element(xpath: "//android.widget.Button[@text='C']").click
end

When('I press on a number button') do
  find_element(id: "content_dtls_frame").find_element(xpath: "//android.widget.Button[@text='1']").click
end

When('I type {string} to target text field') do |string|
  find_element(id: "com.ba.universalconverter:id/btn_del").click
  string.split('').each { |c|
    find_element(xpath: "//android.widget.Button[@text='#{c}']").click
  }
end

Then('I should see results as {string}') do |string|
  actual_result = find_element(id: "target_value").text
  if actual_result != string
    fail("I expected "+string+" but found "+actual_result)
  end
end

Then('I press on Add to Favorites icon') do
  find_element(id: "action_add_favorites").click
end

Then('I verify {string} added to Favortie conversions list') do |string|
  fail("Not found on fav list!") unless find_element(id: "favorites_item_hint").text == string
end

Then('I press on search icon') do
  find_element(id: "action_search").click
end

Then('I type {string} in search field') do |string|
  string_mod = string + "\n"
  find_element(id: "search_src_text").send_keys(string_mod)
end

Then('I press return button on soft keyboard') do
  # find_element(id: "search_src_text").send_keys("\n")
  driver.press_keycode(66)
  # driver.tap(x: 0.99, y: 0.99, count: 1).perform
end

Then('I see {string} as a current unit converter') do |string|
  # find_element(id: "com.ba.universalconverter:id/favorites_item_name").text == string
  found_text = find_element(xpath: "//android.widget.TextView[@text='#{string}']").text
end


Then('I select {string} from left unit picker') do |string|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(string)
  find_element(xpath: "//android.widget.TextView[@text='#{string}']").click
end

Then('I select {string} from right unit picker') do |string|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(string)
  find_element(xpath: "//android.widget.TextView[@text='#{string}']").click
end

Then('I press {string} on application keyboard') do |string|
  string.split('').each { |c|
    find_element(xpath: "//android.widget.Button[@text='#{c}']").click
  }
end

When('I press on switch button') do
  find_element(id: "img_switch").click
end

