require 'test_helper'
require 'redgreen'

class PostsControllerTest < ActionController::TestCase
  context 'GET to index' do
    # setup { get :index }
    setup do
      Post.stubs(:all).returns([])
      get :index
    end
      
    should_render_template :index
    should_respond_with    :success
    
    should "find all posts" do
      assert_received(Post, :all)
    end
  end

  context 'POST to create with valid parameters' do
    setup do
      post :create, :post => { :title => "something" }
    end

    should_set_the_flash_to /created/i
    should_redirect_to('posts index') { posts_path }
  end

  context 'POST to create with invalid parameters' do
    setup do
      post :create, :post => { :title => "" }
    end
    
    should_redirect_to :new
  end
  
end