class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to home, :notice => 'User deleted'
  end

end
