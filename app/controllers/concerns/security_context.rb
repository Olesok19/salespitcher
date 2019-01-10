module SecurityContext
  extend ActiveSupport::Concern

  included do
    helper_method :authenticate_user!
  end

  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
  end
end
