class ProductsController < ApplicationController

  def index
    @products = Product.all
    @rank = Product.pro_rank
    @search = Product.ransack(params[:q])
    @result = @search.result
  end

  def show
    @product = Product.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(product_id: @product.id).order('created_at DESC')
  end

  def new
    @product = Product.new
  end

end
