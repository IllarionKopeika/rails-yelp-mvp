class TeamsController < ApplicationController
  before_action :set_stadium, only: %i[new create]

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.stadium = @stadium
    @team.save

    redirect_to stadium_path(@stadium)
  end

  private

  def set_stadium
    @stadium = Stadium.find(params[:stadium_id])
  end

  def team_params
    params.require(:team).permit(:name, :squad_size)
  end
end
