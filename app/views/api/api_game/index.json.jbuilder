json.games @games do |game|
	# json.(game, :id, :game, :data, :location, :adress, :league_id, :season_id, :project)
  json.id game.id
  json.game game.game
  json.data game.data
  json.location game.location
  json.adress game.adress
  json.project game.project
  json.league_id game.league.id
  json.league_name game.league.name
  json.league_city game.league.city
  json.season_id game.season.name
end

# json.teams @teams do |team|
#   json.id team.id
#   json.name team.name
#   json.captain team.captain
#   json.email team.email
#   json.phone team.phone
#   json.league_id team.league.name
# end