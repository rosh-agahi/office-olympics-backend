class Api::V1::SubmissionsController < ApplicationController

  before_action :find_challenge
  before_action :set_submission, only: [:show, :update, :destroy]

  def index
    @submissions = @challenge.submissions
    render json: @submissions
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      render json: @submission
    else
      render json: {error: 'Error saving the submission'}
    end

  end

  def show
    render json: @submission
  end

  def update
    @submission.update(challenge_params)
    render json: @submission
  end

  def destroy
    @submission.destroy
  end

  private

  def find_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def set_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params
    params.require(:submission).permit(:name, :text, :challenge_id)
  end

  end
