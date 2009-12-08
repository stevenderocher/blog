require 'test_helper'
require "redgreen"

class PostTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:post)
  end
  should_belong_to  :user
  should_have_index :user_id
  should_have_many :comments
    
  should "return invalid for invalid post" do
    @post = Factory.build(:post, {:title => nil})
    assert !@post.valid?
    assert !@post.errors.on(:title).blank?
  end
  # should_validate_presence_of :title
  
end
