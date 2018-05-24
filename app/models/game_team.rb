class GameTeam < ApplicationRecord

	paginates_per 10

	belongs_to :game
	belongs_to :team
	
end
