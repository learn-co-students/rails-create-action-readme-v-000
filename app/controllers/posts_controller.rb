class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new #get view page w form
		@post = Post.new
	end
	def create
		@post = Post.new
		@post.title = params[:title]
		@post.description = params[:description]
		@post.save
		#could also have been written as   @post = Post.create(title: params[:title], description: params[:description])
		redirect_to post_path(@post)  #redirects the page to the post show page
		#without setting up the redirect, after rails processes the request to create a new instance in the database, it looks for a views page corresponding to the create action (which does not exits). Because this page does not exist is why we redirect to the show page via the helper method post_path(@post)
	end
end
