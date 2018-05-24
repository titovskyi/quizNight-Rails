class ApiTeamController < ApplicationController
	def index
		@teams = Team.all
	end
end
