class ContactsController < ApplicationController
  skip_before_action :require_authentication
  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    if @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to root_path, notice: "Message sent"
    else
      render :new
    end
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, :message)
  end
end
