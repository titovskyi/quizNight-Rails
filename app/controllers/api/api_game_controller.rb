class Api::ApiGameController < ApplicationController
	def index
		@games = Game.where("data >= ?", Date.today).order(:data)
	end
end
