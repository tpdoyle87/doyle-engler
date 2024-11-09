class ProjectsController < ApplicationController
  skip_before_action :require_authentication, except: %i[new create update]
  before_action :authenticated?, only: %i[new create update ]
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      respond_to do |format|
        format.html { redirect_to projects_path, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      end
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      respond_to do |format|
        format.html { redirect_to projects_path, notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      end
    else
      render :edit
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :thumbnail, :url)
  end
end
