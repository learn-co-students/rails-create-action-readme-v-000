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
  @post.title = params[:title]
  @post.description = params[:description]
  @post.save
	redirect_to post_path(@post)
end
# In this refactored create action, we're following the convention of redirecting to the new resource's show page. It stands to reason that a user who submits a new post would then like to view the successfully-created post. With that being said, the page flow is not set in stone, and we could've redirected the create action to the index action just as easily.


end