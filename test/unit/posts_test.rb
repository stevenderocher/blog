require 'test_helper'

class PostsTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:posts)
  end
  should_belong_to  :user
  should_have_index :user_id
end
