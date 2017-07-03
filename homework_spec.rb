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

end