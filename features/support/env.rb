require "appium_lib"
require "pry"

def caps
{caps: {
      deviceName: "Brad",
      platformName: "Android",
      app: (File.join(File.dirname(__FILE__), "com.ba.universalconverter.apk")),
      appPackage: "com.ba.universalconverter",
      appActivity: "MainConverterActivity",
      newCommandTimeout: "3600",
      noSign: "true"
}}
end

Appium::Driver.new(caps,true )
Appium.promote_appium_methods Object

def find_in_list(string)

  3. times do
    sleep 1
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x:0.5, end_y:0.8, duration: 400).perform
  end

  current_screen = get_source
  previous_screen = ""

  until (exists { find_element(xpath: "//android.widget.TextView[@text='#{string}']").text }) || (current_screen == previous_screen)  do
    sleep 1
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.6, end_x:0.5, end_y:0.4, duration: 800).perform
    log("swiped")
    previous_screen = current_screen
    current_screen = get_source
  end
end