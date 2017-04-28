class Api::V1::MatchesController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :update, :destroy]
  respond_to :json

  def show
    render json: Match.find(params[:id])
  end

  def index
    render json: Match.all
  end

  def create
      match = Match.new(team_params)
      if match.save
          render json: team, status: 201, location: [:api, match]
      else
          render json: { errors: match.errors }, status: 422
      end
  end

  def update
      match = Match.find(params[:id])
      if match.update(match_params)
          render json: match, status: 200, location: [:api, match]
      else
          render json: { errors: match.errors }, status: 422
      end
  end

  def destroy
      match = Match.find(params[:id])
      if match
        match.destroy
      end
  end

  private
    def match_params
      params.require(:match).permit(:name, :team1, :team2, :creator)
    end
end
