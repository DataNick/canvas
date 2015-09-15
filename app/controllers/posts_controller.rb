class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	def index
		@posts = Post.all.order('created_at DESC')
	end

	def edit
	end

	def create
		@post=Post.build(post_params)
	end

	def destroy
	end


	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :link, :description)
	end

end
