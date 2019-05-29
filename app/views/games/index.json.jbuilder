json.games @games do |game|
  json.id game.id
  json.winner do
    winner = game.winner
    json.first_name winner.first_name
    json.last_name winner.last_name
  end
  json.winner_score game.winner_score
  json.loser_score game.loser_score
end
