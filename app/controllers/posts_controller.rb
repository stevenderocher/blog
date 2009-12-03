class PostsController < InheritedResources::Base
  def new
    @post = Post.new
  end
end
