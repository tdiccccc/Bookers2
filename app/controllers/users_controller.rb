class UsersController < ApplicationController
  def index
    @user = User.find(params[:id])
    @books = @user.books
  end

  def show

  end

  def edit
  end

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
