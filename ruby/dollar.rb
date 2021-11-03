class Dollar
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  def equal?(object)
    @amount == object.amount
  end
end
