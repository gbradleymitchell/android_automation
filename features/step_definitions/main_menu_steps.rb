Given('I land on home screen') do
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

When('I press on menu icon') do
  find_element(accessibility_id: "Open navigation drawer").click
end

Then('I should see left side menu') do
  find_element(accessibility_id: "Close navigation drawer")
end

When('I select {string}') do |string|
  find_elements(id: "com.ba.universalconverter:id/drawerCategoryName").each do | element|
    if element.text == string
      element.click
      break
    end
  end
end

Then('I land on my conversions screen') do
  find_element(id: "com.ba.universalconverter:id/text_info_no_custom_conversions")
  find_element(id: "com.ba.universalconverter:id/btn_new_custom_conversion")
end

Then('I see a special message for me') do
  find_element(id: "com.ba.universalconverter:id/text_info_no_custom_conversions").text == "No pesonal converstion created yet"
  find_element(id: "com.ba.universalconverter:id/btn_new_custom_conversion")
end


Then('I land on Speed conversions screen') do
  find_element(id: "foo")
end