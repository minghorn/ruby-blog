class PostsController < ApplicationController
	def index
		@posts = Post.all
		@show_post_link = true
	end
	def show
		@post = Post.find(params[:id])
		@show_post_link = false
	end
	def new
		@post = Post.new
	end
	def edit
		@post = Post.find(params[:id])
	end
	def create
		@author = Author.find(params[:author_id])
		@post = @author.posts.create(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	private
		def post_params
			params.require(:post).permit(:title, :author_name, :body)
		end
end
