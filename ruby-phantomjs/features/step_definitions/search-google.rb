
Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.co.uk'
  page.save_screenshot("./screenshots/step1.pdf")
end

Then(/^I will search for "([^"]*)"$/) do |searchText|
  input = find(:css, '.lst')
  input.set(searchText)
  input.native.send_keys(:return)
  page.save_screenshot("./screenshots/step2.pdf")
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  expect(page).to have_content(expectedText)
  page.save_screenshot("./screenshots/step3.pdf")
end

Then(/^I will click the Games link$/) do
  click_link('Games')
end
