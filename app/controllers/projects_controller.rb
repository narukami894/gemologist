class ProjectsController < ApplicationController
  def show
    @project = Team.find(params[:team_id]).project
  end
end
