class AuthorsController < ApplicationController
	def index
		@authors = Author.all
		@show_more = true
	end
	def show
		@author = Author.find(params[:id])
		@show_more = false
		@show_post_link = true
	end
	def new
		@author = Author.new
	end
	def create
		@author = Author.new(author_params)

		if @author.save
			redirect_to @author
		else
			render 'new'
		end
	end

	private
		def author_params
			params.require(:author).permit(:name, :bio, :photo_url)
		end
end
