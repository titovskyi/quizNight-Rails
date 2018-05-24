class League < ApplicationRecord
	has_many :seasons, dependent: :destroy
	has_many :games, dependent: :destroy
	has_many :teams
	has_many :game_teams, :through => :games


	def league_filter
    	"#{name}. #{city}"
  	end
end
