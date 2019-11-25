class Team

  attr_reader :name, :players, :coach, :points
  attr_writer :name, :players,   :coach, :points


  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

  def add_new_player(player_name)
    @players.push(player_name)
  end

  def check_player_is_in_player_list(player_name)
    for player in @players
      return true if player == player_name
      return false if player != player_name
    end
  end
  def checks_whether_team_has_won_or_lost(opponent)
    if @points > opponent.gets_team_points
      return "your team wins!"
    elsif @points < opponent.gets_team_points
      "your opponent wins!"
    else
      "its a draw!"
    end
  end

  def gets_team_points
    return @points
  end

  end
