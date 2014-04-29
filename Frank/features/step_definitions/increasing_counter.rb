When /^I touch the navigation button marked "([^\"]*)"$/ do |mark|
  quote = get_selector_quote(mark)
  sleep(1)
  touch("button marked:#{quote}#{mark}#{quote}")
end

Then /^I should see a label with text "([^\"]*)"$/ do |label|
  check_element_exists("view:'UILabel' marked:'#{label}'")
end

Then /^I should navigate to the view named "([^\"]*)"$/ do |viewName|
  wait_until(:timeout => 60, :message => "waiting for view to appear") {
    element_exists("view:'UIView' marked:'#{viewName}'")
  }
end

Then /^I should be back on the main screen$/ do
  ['Counter', 'New Window', 'Alert'].each do |buttonName|
    check_element_exists("view:'UIButton' marked:'#{buttonName}'")
  end
end