class ApplicationController < ActionController::Base
	include Pundit

	protect_from_forgery with: :exception
	before_action :authenticate_user!

	  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end


  helper_method :admin_types
  def admin_types
  	['AdminUser']
  end
end
