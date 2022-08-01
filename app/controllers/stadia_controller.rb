class StadiaController < ApplicationController
  before_action :set_stadium, only: %i[show edit update destroy]

  def index
    @stadia = Stadium.all
  end

  def show
  end

  def new
    @stadium = Stadium.new
  end

  def create
    @stadium = Stadium.new(stadium_params)
    @stadium.save

    redirect_to stadium_path(@stadium)
  end

  def edit
  end

  def update
    @stadium.update(stadium_params)

    redirect_to stadium_path(@stadium)
  end

  def destroy
    @stadium.destroy

    redirect_to stadia_path, status: :see_other
  end

  private

  def stadium_params
    params.require(:stadium).permit(:name, :location, :capacity)
  end

  def set_stadium
    @stadium = Stadium.find(params[:id])
  end
end
