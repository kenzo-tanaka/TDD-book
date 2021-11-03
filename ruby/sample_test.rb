require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    five = Dollar.new(5)
    five.times 2
    assert_equal 10, five.amount
  end
end
