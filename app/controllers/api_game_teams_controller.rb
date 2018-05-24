class ApiGameTeamsController < ApplicationController
	def index
		@game_teams = GameTeam.all
	end
end
