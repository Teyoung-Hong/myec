class NotificationMailer < ApplicationMailer

  default from: "hogehoge@example.com"
  def send_confirm_to_user(contact)
    @contact = contact
    mail(
      subject: "From cd samurai",
      to: contact.email 
    ) do |format|
      format.text
    end
  end

end
