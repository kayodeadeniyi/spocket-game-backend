json.users @users do |user|
  json.first_name user.first_name
  json.last_name user.last_name
  json.email user.email
  json.score user.games_count
end
