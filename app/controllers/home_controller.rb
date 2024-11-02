class HomeController < ApplicationController
  def index
    @projects = [ "item1", "item2", "item3" ]
    @posts = Post.order(created_at: :desc).limit(3)
    @contact = Contact.new
  end
end
