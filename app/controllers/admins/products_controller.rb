class Admins::ProductsController < ApplicationController

  def new
    @product = Product.new
    disc = @product.discs.build # disc
    disc.songs.build # song
  end

  def create
    @product = Product.new(product_params)
    # song_orderのロジックがわからないのでとりま応急措置で1を代入 
    @product.discs.each do |d| d.songs.each do |s| s.song_order = 1 end end
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:album_name, :artist_name, :label, :price, :stock, :sales_status, :jacket_image, :genre_id, discs_attributes: [:id, :disc_name, :_destroy, songs_attributes: [:id, :song_name, :song_order, :_destroy]])
  end
  
end
