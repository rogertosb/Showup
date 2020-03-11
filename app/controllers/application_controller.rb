class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_info_user, except: :devise_controller?
  private


  def check_info_user
    return unless current_user
    redirect_to sign_up_details_path if current_user.organizer? && current_user.organizer_name.nil?
    redirect_to sign_up_details_path if current_user.attendee? && current_user.first_name.nil?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :user_type)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end

  def after_sign_in_path_for(resource)
    if @user.organizer? && @user.organizer_name.nil?
      sign_up_details_path
    else
      dashboard_path
    end
    if @user.attendee? && @user.first_name.nil?
      sign_up_details_path
    else
      dashboard_path
    end
  end
end
