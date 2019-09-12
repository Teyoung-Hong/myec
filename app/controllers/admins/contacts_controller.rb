class Admins::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    @new_contact = ContactReply.new
  end

  def show
    @contact = Contact.find(params[:id])
    @new_contact = ContactReply.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.update(contact_params)
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:checking_status)
  end

end
