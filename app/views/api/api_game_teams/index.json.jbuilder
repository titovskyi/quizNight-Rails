# json.games @games do |game|
	# json.(game, :id, :game, :data, :location, :adress, :league_id, :season_id, :project)
#   json.id game.id
#   json.game game.game
#   json.data game.data
#   json.location game.location
#   json.adress game.adress
#   json.project game.project
#   json.league_id game.league.name
#   json.league_city game.league.city
#   json.season_id game.season.name
# end

json.game_teams @game_teams do |game_team|
  json.id game_team.id
  json.approved game_team.approved
  json.name game_team.team.name
  json.captain game_team.team.captain
  json.email game_team.team.email
  json.phone game_team.team.phone
  json.game_id game_team.game.id
end