class UsersController < ApplicationController
  skip_before_action :check_info_user, only: [:update]

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)

      redirect_to user_path(@user)
    else
      render 'pages/sign_up_details'
    end
  end

 def switch_to_organizer
    current_user.user_type = 'Organizer'
    current_user.save
    redirect_to user_path(current_user)

  end

  def switch_to_attendee
    current_user.user_type = 'Attendee'
    current_user.save
    redirect_to user_path(current_user)
  end

  private

  def user_params
    par = params.permit(:first_name, :last_name, :avatar, :organizer_name, :user_type,  :user,  :id)
    par =  par.merge(params.require(:user).permit(:first_name, :last_name, :avatar, :organizer_name, :user_type,  :user,  :id)) if params[:user].present?
    par
  end
end
