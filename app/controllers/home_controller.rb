class HomeController < ApplicationController
  skip_before_action :require_authentication
  def index
    @projects = Project.order(created_at: :desc).limit(3)
    @posts = Post.order(created_at: :desc).limit(3)
    @contact = Contact.new
  end
end
