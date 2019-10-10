class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if current_user == @user or current_user.has_role? :admin
    @city =  City.find(@user.city_birth_id)
    else
    redirect_to root_path
    end
  end

  def show_academic
    @user = User.find(params[:id])
  end

end
