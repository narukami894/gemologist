class GemfilesController < ApplicationController
  def show
    @gemfile = Gemfile.find(params[:team_id])
  end

  def edit
    @gemfile = Gemfile.find(params[:team_id])
  end

  def update
    @gemfile = Gemfile.find(params[:team_id])
    @gemfile.update(gemfile_params)
    redirect_to team_project_gemfile_path
  end

  private

  def gemfile_params
    params.require(:gemfile).permit(:context)
  end
end
