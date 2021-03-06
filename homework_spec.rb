require('minitest/autorun')
require_relative('./homework')

class TestHomework < MiniTest::Test

  def test_get_name()
    tom = Student.new("Tom",15)
    assert_equal("Tom",tom.get_name())
  end

  def test_get_cohort()
    tom = Student.new("Tom",15)
    assert_equal(15,tom.get_cohort())
  end

  def test_set_name()
    tom = Student.new("Tom",15)
    tom.set_name("Tony")
    assert_equal("Tony",tom.get_name())
  end

  def test_set_cohort()
    tom = Student.new("Tom",15)
    tom.set_cohort(16)
    assert_equal(16, tom.get_cohort())
  end

  def test_talk
    tom = Student.new("Tom",15)
    actual = tom.talk()
    assert_equal("My name is Tom, how are you?", actual)
  end

  def test_say_favourite_language
    tom = Student.new("Tom",15)
    actual = tom.say_favourite_language("Ruby")
    assert_equal("My favourite language is Ruby", actual)
  end

  def test_sportsteam_getters
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    assert_equal("Pennsylvania Pistons", pistons.name)
    assert_equal("Bradley Smith", pistons.players[0])
    assert_equal("Henry Black", pistons.coach)
  end

  def test_new_coach
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    pistons.coach = "Boris Johnson"
    assert_equal("Boris Johnson", pistons.coach)
  end  

  def test_new_player
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    pistons.new_player("Radzhad Hussein")
    assert_equal("Radzhad Hussein", pistons.players[2])
  end

  def test_player_in_team?
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    assert_equal(true, pistons.player_in_team?("Chad Hunter"))
    assert_equal(false, pistons.player_in_team?("Theresa May"))
  end
  
  def test_points
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    assert_equal(0, pistons.points)
  end

  def test_match_played
    pistons = SportsTeam.new("Pennsylvania Pistons", ["Bradley Smith", "Chad Hunter"], "Henry Black")
    pistons.match_played("Win")
    assert_equal(1, pistons.points)
    pistons.match_played("Lose")
    assert_equal(1, pistons.points)
  end

end



