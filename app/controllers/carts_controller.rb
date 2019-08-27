class CartsController < ApplicationController

  def index
    @carts = Cart.where(user_id: current_user.id)
    tp = 0
    @total_price = @carts.each do |c| 
      total = c.product.price * 1.08 * c.quantity
      tp += total
    end
  end

  def show
    @cart = Cart.find(params[:id])
  end

  def create
    pro = Product.find(params[:product_id])
    cart = current_user.carts.new
    cart.product_id = pro.id
    cart.quantity = 1
    if cart.save
      redirect_to product_path(pro.id)
    else
      render 'product/show'
    end
  end

  def edit
    cart = Cart.find(oarams[:id])
  end

  def update
    cart = Cart.find(oarams[:id])
    if cart.update(cart_params)
      redirect_to carts_path
    else
      render 'edit'
    end
  end

end
