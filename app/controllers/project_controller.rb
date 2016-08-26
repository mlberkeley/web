class ProjectController < ApplicationController
  def index
    @projects = Project.where(tag: 'industry')
  end

  def show
    @project = Project.find(params[:id])
  end

  def research
    @projects = Project.where(tag: 'research')
  end
end
