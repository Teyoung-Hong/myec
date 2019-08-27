class FavoritesController < ApplicationController

  def create
    pro = Product.find(params[:product_id])
    fav = current_user.favorites.new
    fav.user_id = current_user.id
    fav.product_id = pro.id
    fav.save
    redirect_to root_path
  end
  
  def destroy
    pro = Product.find(params[:product_id])
    fav = current_user.favorites.find_by(product_id: pro.id)
    fav.destroy
    redirect_to root_path
  end

end
