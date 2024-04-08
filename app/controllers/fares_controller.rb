class FaresController < ApplicationController
  def index
    @fares = Fare.all
  end

  def new
    @fare = Fare.new
  end

  def create
    @fare = Fare.new(fare_params)
    if @fare.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def fare_params
      params.require(:fare).permit(:routeA, :routeB, :transportation, :amount, :remarks)
    end
end