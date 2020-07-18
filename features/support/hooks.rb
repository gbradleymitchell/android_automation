Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    #take screenshot
    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end
    time_stamp = Time.new.strftime("%Y-%m-%d-%H-%M-%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots", screenshot_name)
    screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
  end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end