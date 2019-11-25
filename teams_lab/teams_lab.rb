class Team

  attr_reader :name, :players, :coach
  attr_writer :name, :cohort

  def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  end

end
