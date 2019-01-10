class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all.paginate(:page => params[:page])
  end

  def show; end

  def edit
    find_group
  end

  def update
    find_group
    if @group.update_attributes(group_params)
      flash[:notice] = 'The group has been successfully updated'
      redirect_to groups_path
    else
      flash[:notice] = 'Wrong data!'
      render 'edit'
    end
  end

  def destroy
    find_group
    @group.destroy
    flash[:notice] = 'The group removed'
    redirect_to groups_path
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:notice] = 'The group saved'
      redirect_to groups_path
    else
      flash[:notice] = 'Wrong data!'
      render 'new'
    end
  end

  def new
    if current_user
      @group = Group.new
    else
      flash[:notice]= "You should log in"
      redirect_to new_user_session_path
    end
  end

  private

  def find_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:group_name)
  end
end
