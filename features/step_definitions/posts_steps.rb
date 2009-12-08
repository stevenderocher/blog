When /^I create a post named "([^\"]*)"$/ do |title|
  fill_in :title, :with => title
  click_button 'Create'
end

Given /^I am signed out$/ do
  assert ! controller.signed_in?
end

# Given I am signed out
#   session[:user_id] = nil
#   or
#   delete '/sessions'
# end