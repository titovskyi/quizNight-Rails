class Api::ApiGameTeamsController < ApplicationController
	
	protect_from_forgery with: :null_session

	def index
		@game_teams = GameTeam.all
	end

	def create
		GameTeam.create(order_params)
	end

	private

	def order_params
		params.permit(:team_id, :game_id)
	end
end
