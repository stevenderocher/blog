class CommentsController < ApplicationController
  before_filter :find_post
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end
  def create
    @comment = @post.comments.new(params[:comment])
    @comment.save
    redirect_to @comment
  end
  def show
    @comment = @post.comments.find(params[:id])
  end
  def index
    @comments = @post.comments.all
  end
  
  def find_post
    @post = Post.find(params[:post_id])
  end
  
end