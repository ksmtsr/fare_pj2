class FaresController < ApplicationController
  
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

  def index
    @fares = Fare.all
    @total_amount = @fares.sum(:amount)
  end

  def destroy
    @fare = Fare.find(params[:id])
    @fare.destroy
      redirect_to root_path
  end

  private
    def fare_params
      params.require(:fare).permit(:date, :routeA, :routeB, :transportation, :amount, :remarks)
    end
end