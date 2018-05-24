class ApiController < ApplicationController

	protect_from_forgery with: :null_session

	def index
		@games = Game.where("data >= ?", Date.today).order(:data)
	end

	def create
		GameTeam.create(order_params)
	end

	private

	def order_params
		params.permit(:team_id, :game_id)
	end
end
