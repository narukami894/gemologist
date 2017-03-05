class TeamsController < ApplicationController
  before_action :set_team, only: %i(show edit update)

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.save(team_params)
    redirect_to teams_path
  end

  def show; end

  def edit; end

  def update
    @team.update(team_params)
    redirect_to teams_path
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end

end
