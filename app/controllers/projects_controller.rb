class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
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