class StaticController < ApplicationController
  def index
    @selected_projs = Project.last(4)
  end

  def about
  end

  def contact
  end

end
