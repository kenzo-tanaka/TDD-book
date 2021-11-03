class Franc < Money
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

  def ==(other)
    amount == other.amount
  end
end
