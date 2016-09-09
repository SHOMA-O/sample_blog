class PostsController < ApplicationController
  before_action :set_post, only:[:show,:edit,:update,:destroy]
  def new
    @post = Post.new(post_params)
  end
  def create
  	@post = Post.new(post_params)
  	@post.save
    redirect_to post_path(@post.id)
  end
  def index
  	@posts = Post.all
  end
  def show
  	# @post = Post.find(params[:id])
  end
  def edit
  	# @post = Post.find(params[:id])
  end
  def update
	  # @post = Post.find(params[:id])
 	  @post.title = params[:title]
  	@post.body = params[:body]
  	@post.save
    redirect_to post_path(@post.id)
  end
  def destroy
  	# @post = Post.find(params[:id])
  	@post.destroy
    redirect_to post_index_path
  end
  private
    def set_post
     @post = Post.find(params[:id])
    end
    def post_params
      params.require(:post).perimit(:title,:body)
    end
end
