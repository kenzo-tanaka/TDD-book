require 'minitest/autorun'
require_relative 'dollar'

class SampleTest < Minitest::Test
  def test_sample
    five = Dollar.new(5)
    five.times 2
    assert_equal 10, five.amount

    five.times 3
    assert_equal 15, five.amount
  end
end
