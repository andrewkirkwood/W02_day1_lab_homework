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


end
