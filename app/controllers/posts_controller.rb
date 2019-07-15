class PostsController < ApplicationController
  def index
    @posts = Post.all
    @categories = Category.all 

  end

  def show
    @post = Post.find(params[:id])
    @categories = Category.all 
    @comment = Comment.new
    @comments = Comment.all
  end
end
