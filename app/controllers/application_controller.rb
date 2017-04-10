class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!





  protected

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end

end
