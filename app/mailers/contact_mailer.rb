class ContactMailer < ApplicationMailer
  def contact_email(contact)
    mail(to: "tpdoyle87@gmail.com", subject: "Contact Form Submission", body: contact[:message])
  end
end
