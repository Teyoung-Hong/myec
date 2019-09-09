class ContactRepliesController < ApplicationController


  def create
    reply = ContactReply.new(reply_params)
    contact = Contact.find(params[:contact_id])
    reply.contact_id = contact.id 
    if contact.save
      redirect_to root_path
    else
      render 'contact/index'
    end    
  end

  private
  def reply_params
    params.require(:contact_reply).permit(:body)
  end

end
