class PostsController < ApplicationController
  # before_filter :authenticate, :except => [:index, :show]
  before_filter :must_be_signed_in, :except => [:index, :show]
  
  def new
    @post = Post.new
  end
  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.rss { render :layout => false}
      format.xml  { render :xml => @posts.to_xml }
    end
  end
  def index
    @posts = Post.all
    respond_to do |format|
      format.html
      format.rss { render :layout => false}
      format.xml  { render :xml => @posts.to_xml }
    end
  end
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "created!"
      redirect_to @post
    else
      render :action => :new
    end
    # @post.save
    # flash[:success] = "created!"
    # redirect_to @post
  end
  
  def gen_xml
    @xml = Builder::XmlMarkup.new
    @posts = Post.all
  end
  
  def must_be_signed_in
    unless signed_in?
      deny_access('must be signed in, bitch!')
    end
  end
  
end
