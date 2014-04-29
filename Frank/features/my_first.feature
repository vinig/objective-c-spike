#Feature: 
#  As an iOS developer
#  I want to have a sample feature file
#  So I can see what my next step is in the wonderful world of Frank/Cucumber testing
#
#Scenario: 
#    Rotating the simulator for demonstration purposes
#Given I launch the app
#Given the device is in landscape orientation
#Given the device is in portrait orientation
#Given the device is in landscape orientation
#Given the device is in portrait orientation

Feature:
  As an application user
  I want to use the app
  So I can see it working

Scenario:
  Increasing the counter

  Given I launch the app
  Then I should see a label with text "0"
  When I touch the button marked "Counter"
  Then I should see a label with text "1"

Scenario:
  Opening new window

  Given I launch the app
  When I touch the button marked "New Window"
  Then I should navigate to the view named "voilaView"
  Then I should see a label with text "Voila"
  When I touch the navigation button marked "Back"
  Then I should be back on the main screen
