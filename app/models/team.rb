class Team < ApplicationRecord
	belongs_to :league

	has_many :game_teams, dependent: :destroy

	def league_filter
    	"#{name}. #{city}"
  	end
end
