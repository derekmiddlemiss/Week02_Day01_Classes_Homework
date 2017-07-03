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
    assert_equal("Pennsylvania Pistons", pistons.get_name())
    assert_equal("Bradley Smith", pistons.get_players[0])
    assert_equal("Henry Black", pistons.get_coach)
  end



end



