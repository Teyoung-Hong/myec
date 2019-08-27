class OrdersController < ApplicationController

  def index
    @orders = Order.find_by(user_id: current_user.id)
    @total_price = @carts.each do |c| 
      t_p = 0
      t_p += c.product.price
      return t_p 
    end
  end

  def create
    # order, ordered_product 保存
    order = Order.new(order_params) # paywayとaddress_idを受け取る
    carts = Cart.where(user_id: current_user)
    order.user_id = current_user.id
    carts.each do |c|
      ordered = order.ordered_product.build # 購入済み商品の取得
      ordered.genre_id = c.product.genre_id
      ordered.artist_name = c.product.artist_name
      ordered.product_name = c.product.album_name
      ordered.label = c.product.label
      ordered.price = c.product.price
      ordered.jacket_image_id = c.product.jacket_image_id
      ordered.save
    end
    order.save
    # 現存のcart 削除
    carts.each do |c|
      c.destroy
    end
    # ページ遷移
    redirect_to user_path(current_user.id)
  end
  
  def new
    @order = Order.new
    @carts = Cart.where(user_id: current_user.id) # 購入するカート商品データ
  end

  private
  def order_params
    params.require(:order).permit(:payway, :address_id)
  end

end
