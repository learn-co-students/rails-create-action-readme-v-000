class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
	end

	def create
		@post = Post.new(title: params[:title], description: params[:description])
		@post.save
		redirect_to posts_path
	end

end
