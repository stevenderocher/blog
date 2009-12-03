When /^I create a post named "([^\"]*)"$/ do |name|
  fill_in :name, :with => name
  click_button 'Create'
end

