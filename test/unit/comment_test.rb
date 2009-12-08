require 'test_helper'
require 'redgreen'

class CommentTest < ActiveSupport::TestCase
  # should "be valid with Facotry" do
  #   assert_valid Factory.build(:comment)
  # end
  should_belong_to :post

end