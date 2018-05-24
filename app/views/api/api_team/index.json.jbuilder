json.teams @teams do |team|
  json.id team.id
  json.name team.name
  json.captain team.captain
  json.email team.email
  json.phone team.phone
  json.league_id team.league.id
  json.league_name team.league.name
end