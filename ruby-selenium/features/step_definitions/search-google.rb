
Given(/^I am on the Google homepage$/) do
  visit 'http://www.google.co.uk'
end

Then(/^I will search for "([^"]*)"$/) do |searchText|
  fill_in 'lst-ib', :with => searchText
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  expect(page).to have_content(expectedText)
end

Then(/^I will click the Games link$/) do
  click_link('Games')
end
