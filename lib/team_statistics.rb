module TeamStatistics

  def win_percentage(team_games)
    wins = 0.0
    team_games.each do |game|
      wins += 1.0 if game.result == "WIN"
    end
    (wins / team_games.length)
  end
end
