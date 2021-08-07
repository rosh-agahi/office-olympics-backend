class Api::V1::ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
    render json: @challenges 
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def challange_params
    params.require(:challenge).permit(:name, :description, :rules)
  end

end
