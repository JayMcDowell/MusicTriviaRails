Given(/^the user "(.*?)"$/) do |initials|
 user = User.create(initials: initials)
end

When(/^I go to the homepage$/) do
visit "/"
end

When(/^I click "(.*?)"$/) do |submit|
  click_link_or_button submit
end

Then(/^I should be sent to next page$/) do
  visit "/quizzes"
end

