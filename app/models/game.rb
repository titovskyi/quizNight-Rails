class Game < ApplicationRecord

	paginates_per 10

	belongs_to :season
	belongs_to :league

	has_many :game_teams, dependent: :destroy
	has_many :teams, :through => :game_teams
end
