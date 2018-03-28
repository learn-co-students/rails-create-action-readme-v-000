class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@post.title = "Title Goes Here"
		@post.description = "Desc goes here..."
		@post.save

	end
	def create
		@post = Post.new
		@post.title = params[:title]
		@post.description = params[:description]
		@post.save
		redirect_to post_path(@post)
	end
end
