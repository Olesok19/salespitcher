class PostsController < ApplicationController
  #GET /posts
  def index
    if params[:my]
      @petitions = Petition.where(user: current_user).paginate(:page => params[:page])
    else
      @petitions = Petition.all.paginate(:page => params[:page])
    end
  end

  #GET /posts/1
  def show
  end

  def edit
  end

  #PUT /posts/1
  def update
    if @petition.update_attributes(petition_params)
      flash[:notice] = "The petition has been successfully updated"
      redirect_to petitions_path({:my => true})
    else
      flash[:notice] = "Wrong data!"
      render "edit"
    end
  end

  #DELETE /posts/1
  def destroy
    @post.destroy
    flash[:notice] = "The petition removed"
    redirect_to petitions_path({:my => true})
  end

  #POST /petitions
  def create
    @post = current_user.posts.create(post_params)
    if @post.save
      flash[:notice] = "The post saved"
      redirect_to posts_path
    else
      flash[:notice] = "Wrong data!"
      render "new"
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

  def find_petition
    @post = Post.find(params[:id])
  end

  def petition_params
    params.require(:post).permit(:title, :text, :file)
  end
end
