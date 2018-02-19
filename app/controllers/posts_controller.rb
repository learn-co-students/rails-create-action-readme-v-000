class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		#@post = Post.new
	end

  def create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    #need to redirect once this action is complete or rails will look for create.html.erb view
    redirect_to post_path(@post)
  end

end