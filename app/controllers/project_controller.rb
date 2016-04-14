class ProjectController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def research
    @projects = Project.where(tag: 'research')
  end
end
