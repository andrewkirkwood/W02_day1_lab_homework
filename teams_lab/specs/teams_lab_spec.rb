require('minitest/autorun')
require('minitest/reporters')
require_relative('../teams_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeamsLab < MiniTest::Test

  def test_gets_team_name
    team = Team.new("Lions", ["John, Steve"], "Carter")
    assert_equal("Lions", team.name)
  end

  def test_gets_team_players
    team = Team.new("Lions", ["John, Steve"], "Carter")
    assert_equal(["John, Steve"], team.players)
  end

  def test_gets_coach_name
    team = Team.new("Lions", ["John, Steve"], "Carter")
    assert_equal("Carter", team.coach)
    end

end
