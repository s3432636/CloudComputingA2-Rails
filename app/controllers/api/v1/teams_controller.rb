class Api::V1::TeamsController < ApplicationController
    skip_before_action :authenticate_request, only: [:show]

     # This controller is deprecated as we are now using Groups instead of Teams.
     # GET /teams
    def index
        @teams = Team.all
        render json: @teams
    end

    # This should be for finding by ID, but been having a bug so just returning all teams for this endpoint
    # GET /team/:id
    def show
        @teams = Team.all
        render json: @teams
    end

    def create
        @current_user = AuthorizeApiRequest.call(request.headers).result
        params[:team][:admin] = @current_user.id
        @team = Team.new(team_params)       
        @team.save
        @teams = Team.all
        render json: @teams
    end

    private
        def team_params
            params.require(:team).permit(:players, :image, :name, :sport, :admin, :auth_token)
        end
end
