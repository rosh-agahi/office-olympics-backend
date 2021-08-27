class Api::V1::SubmissionsController < ApplicationController

  before_action :find_challenge
  before_action :set_submission, only: [:show, :update, :destroy]

  def index
    if @challenge
      @submissions = @challenge.submissions
    else
      @submissions = Submission.all
    end
    render json: @submissions
  end

  def create
    @submission = Submission.new(submission_params)
    if @submission.save
      render json: @submission.challenge
    else
      render json: {error: 'Error saving the submission'}
    end

  end

  def show
    render json: @submission
  end

  def update
    @submission.update(challenge_params)
    render json: @submission.challenge
  end

  def destroy
    @submission.destroy
  end

  private

  def find_challenge
    if params[:challege_id]
      @challenge = Challenge.find(params[:challenge_id])
    end
  end

  def set_submission
    @submission = Submission.find(params[:id])
  end

  def submission_params
    params.require(:submission).permit(:name, :text, :videourl, :challenge_id, :votes)
  end

  end
