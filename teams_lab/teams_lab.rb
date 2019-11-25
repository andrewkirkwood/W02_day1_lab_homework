class Team

  attr_reader :name, :players, :coach
  attr_writer :name, :players,   :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
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


end
