class HomeController < ApplicationController
  def index
    @projects = [ "item1", "item2", "item3" ]
    @contact = Contact.new
  end
end
