class AboutController < ApplicationController
  skip_before_action :require_authentication
  def index
    @posts = Post.order(created_at: :desc).limit(3)
  end
end
