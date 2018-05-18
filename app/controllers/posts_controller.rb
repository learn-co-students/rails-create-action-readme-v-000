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

=begin
Rails tries to map each controller action directly to a template. However,
with actions like create, we don't want a view template –– all we want is
for the action to communicate with the database and then redirect to a
different page.

simply need to redirect the user after they've filled out the form
=end


	def create
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end
end
