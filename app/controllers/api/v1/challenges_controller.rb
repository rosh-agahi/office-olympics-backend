class Api::V1::ChallengesController < ApplicationController

  def index
    @challenges = Challenge.all
    render json: @challenges
  end

  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      render json: @challenge
    else
      render json: {error: 'Error saving the challenge'}
    end

  end

  def show
    set_challenge
    render json: @challenge
  end

  def update
    set_challenge
    @challenge.update(challenge_params)
    render json: @challege
  end

  def destroy
    set_challenge
    @challenge.destroy
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challange_params
    params.require(:challenge).permit(:name, :description, :rules)
  end

end
