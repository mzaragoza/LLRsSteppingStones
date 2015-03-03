class ContactMailer < ActionMailer::Base

  def my_message(options = {})
    @contact = Contact.find(options[:contact_id])
    mail(
        :from => "AUTOMATED<automated@llrsteppingstones.com>",
        :to =>   "AUTOMATED<automated@llrsteppingstones.com>",
        :bcc => ["mzaragoza@circletechfl.com"],
        :reply_to => "AUTOMATED<automated@llrsteppingstones.com>",
        :subject => "#{ @contact.name.to_s.titleize} Contacted you from the website"
    )

  end
end
