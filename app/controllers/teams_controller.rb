class TeamsController < ApplicationController
  before_action :set_team, only: %i(show edit update)

  def index
    @teams = Team.all
  end

  def show; end

  def edit; end

  def update; end

  private

  def set_team
    @team = Team.find(params[:id])
  end
end
