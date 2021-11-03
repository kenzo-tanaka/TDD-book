require 'minitest/autorun'
require_relative 'dollar'

class MoneyTest < Minitest::Test
  def test_sample
    five = Dollar.new(5)
    product = five.times 2
    assert_equal 10, product.amount

    product = five.times 3
    assert_equal 15, product.amount
  end

  def test_equality
    assert_equal(true, Dollar.new(5).equal?(Dollar.new(5)))
  end
end
