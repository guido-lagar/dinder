class SettingsController < ApplicationController
  def index
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:success] = "Your settings have been updated."
      redirect_to root_path
    else
      render "index"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar)
  end
end
