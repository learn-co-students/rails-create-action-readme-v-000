class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	# def create #from this
	#   post = Post.new
	#   post.title = params[:title]
	#   post.description = params[:description]
	#   post.save
	# end

	#to this
	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

end
