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
	
	def edit
		@post = Post.find(params[:id])
	end
	
	def create
		@post = Post.new(params[:post])
		@post.save ? redirect_to(@post, :notice => 'Post was successfully created.') : render(:action=> "new")
	end
	
	def update
		@post = Post.find(params[:id])
		@post.update_attribetes(params[:post]) ? redirect_to(@post, :notice => 'Post was successfully updated.') : (render :action => "edit")
	end
	
	def destroy
		@post = Post.find(params[:id])
		@post.destroy and redirect_to(posts_url)
	end
end
