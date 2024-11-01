class ProjectsController < ApplicationController
  def index
    @projects = [ "item1", "item2", "item3" ]
  end
end
