class Api::V1::ChallengesController < ApplicationController

  def index
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
