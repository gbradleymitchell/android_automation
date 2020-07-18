Then('I see message no history right now') do
  message = find_element(id: "text_info_history").text
  if message != "No history right now"
    fail("expected foo but got "+ message)
  end
end

Then('I see {string} on History page') do |string|
  sleep 1
  fail("Not found on history list!") unless find_element(id: "history_item_hint").text == string
end

Then('I click delete history') do
  sleep 1
  find_element(id: "btn_clear_history").click
  sleep 1
  find_element(id: "android:id/button1").click
end


