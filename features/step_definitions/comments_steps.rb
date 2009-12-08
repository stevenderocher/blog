Given /^I a post exists with a title of "([^\"]*)"$/ do |title|
  @post = Factory.create(:post, :title => "title")
end

When /^I create a comment with body "([^\"]*)"$/ do |body|
  fill_in :body, :with => body
  click_button 'Create'
end