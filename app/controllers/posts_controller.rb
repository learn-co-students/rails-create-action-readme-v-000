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

	def create
		@post = Post.new
		@post.update(title: params[:title])
		@post.update(description: params[:description])
		redirect_to post_path(@post)
	end
end
