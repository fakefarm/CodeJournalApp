class ProjectsController < ApplicationController

# before_filter :require_login

  def index
    @projects = current_user.projects
  end

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.build(params[:project])
    redirect_to '/projects' if @project.save
  end

  def edit
  end

  def show
    @project = Project.find(params[:id])
    @question = Question.all
  end

  def delete
  end

end