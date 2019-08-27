class AddressesController < ApplicationController

  def create
    ad = current_user.addresses.new(ad_params)
    if ad.save
      redirect_to user_path(current_user)
    else
      render 'users/show'
    end
  end
  
  def update
  end

  def destroy
    ad = Address.find(params[:id]) #paramsの値わからない
    if ad.destroy
      redirect_to user_path(current_user)
    else
      render 'users/show'
    end
  end

  private
  def ad_params
    params.require(:address).permit(:phone, :postal_code, :sending_address, :receiver_name, :recceiver_name_kana)
  end

end
