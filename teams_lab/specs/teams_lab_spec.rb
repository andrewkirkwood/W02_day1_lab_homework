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

    def test_set_coach_name
      team = Team.new("Lions", ["John, Steve"], "Carter")
      team.coach = "Dave"
      assert_equal("Dave", team.coach)
    end

    def test_add_new_player_to_players
      team = Team.new("Lions", ["John", "Steve"], "Carter")
      team.add_new_player("Andrew")
      assert_equal(["John", "Steve", "Andrew"], team.players)

    end

    def test_check_player_is_in_player_list
      team = Team.new("Lions", ["John", "Steve"], "Carter")
      team
    end


end
