class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true, length: { minimum: 10 }
  validates :phone_number, presence: true

  def send_contact_email
    ContactMailer.contact_email(self).deliver_now
  end
end
