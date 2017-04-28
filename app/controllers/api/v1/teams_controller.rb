class Api::V1::TeamsController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :update, :destroy]
  respond_to :json

  def show
    render json: Team.find(params[:id])
  end

  def show_matches
    team = Team.find(params[:id])
    result = nil
    result = team.matches if team
    render json: result
  end

  def show_opponents
    team = Team.find(params[:id])
    result = nil
    result = team.opponents if team
    render json: result
  end

  def index
    render json: Team.all
  end

  def create
      team = Team.new(team_params)
      if team.save
          render json: team, status: 201, location: [:api, team]
      else
          render json: { errors: team.errors }, status: 422
      end
  end

  def update
      team = Team.find(params[:id])
      if team.update(team_params)
          render json: team, status: 200, location: [:api, team]
      else
          render json: { errors: team.errors }, status: 422
      end
  end

  def destroy
  end

  private
    def team_params
      params.require(:team).permit(:name, :users)
    end
end
