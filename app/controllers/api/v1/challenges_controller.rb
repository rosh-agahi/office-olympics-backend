class Api::V1::ChallengesController < ApplicationController

  before_action :set_challenge, only: [:show, :update, :destroy]

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
    render json: @challenge
  end

  def update
    @challenge.update(challenge_params)
    render json: @challege
  end

  def destroy
    @challenge.destroy
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:name, :description, :rules)
  end

end
