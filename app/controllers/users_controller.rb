class UsersController < ApplicationController

  def top
  end

  def show
    @user = User.find(params[:id])
    @ad = current_user.addresses.build
    @carts = Cart.where(user_id: current_user.id)
    @fav = Favorite.where(user_id: @user.id)
    @order = Order.where(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to user_path(user.id)
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :first_name_kana, :last_name_lana, :gender, :birth, :profile_image)
  end


end
