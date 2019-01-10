class UserController < ApplicationController
  before_action :authenticate_user!

  def change_access_rights
    return unless current_user&.admin?
    user = User.find(params[:user_id])
    user.update_attributes(user_params)
    redirect_to group_users_path
  end

  private

  def user_params
    params.require(:user).permit(:user_id, :admin)
  end
end
