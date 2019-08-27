class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    contact.checking_status = false
    contact.save
    redirect_to root_path
  end

  private
  
  def contact_params
    params.require(:contact).permit(:subject, :email, :sender_name, :sender_name_kana, :body)
  end

end
