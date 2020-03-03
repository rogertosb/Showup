class UsersController < ApplicationController
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

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar, :organizer_name)
  end
end
