class PostsController < ApplicationController
  before_action :set_post, :only => [:edit, :show, :update, :destroy]

  Num_posts_per_page = 3

  def index
    @posts = Post.page(params[:page]).per(Num_posts_per_page)
    @posts = @posts.includes(:category)
  end
  def new

  end
  def edit

  end
  def show

  end

  def create

  end
  def update

  end
  def destroy
    @post.destroy
    redirect_to posts_path(:page => params[:page])
    flash[:alert] = "刪除成功"
  end

  private
  def post_params
    params.require(:post).permit( :name, :content, :category_id)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end