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
		@post = Post.create(title: params[:title], description: params[:description])
		@post.save
		redirect_to post_path(@post) # or use 'posts_path' if you wanted to go to index page.
	end
end
