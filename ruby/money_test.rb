require 'minitest/autorun'
require_relative 'dollar'

class MoneyTest < Minitest::Test
  def test_multiplication
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equality
    assert_equal(true, Dollar.new(5) == (Dollar.new(5)))
    assert_equal(false, Dollar.new(5) == (Dollar.new(6)))
  end
end
