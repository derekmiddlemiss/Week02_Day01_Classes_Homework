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

end