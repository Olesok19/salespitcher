class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all.paginate(:page => params[:page])
  end

  def show; end

  def edit
    find_post
  end

  def update
    find_post
    if @post.update_attributes(post_params)
      flash[:notice] = 'The post has been successfully updated'
      redirect_to posts_path
    else
      flash[:notice] = 'Wrong data!'
      render 'edit'
    end
  end

  def destroy
    find_post
    @post.destroy
    flash[:notice] = 'The post removed'
    redirect_to posts_path
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'The post saved'
      redirect_to posts_path
    else
      flash[:notice] = 'Wrong data!'
      render 'new'
    end
  end

  def new
    if current_user
      @post = Post.new
    else
      flash[:notice]= "You should log in"
      redirect_to new_user_session_path
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text, :file)
  end
end
