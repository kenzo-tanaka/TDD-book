class Money
  attr_accessor :amount

  def ==(other)
    (amount == other.amount) && (self.class.name == other.class.name)
  end

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end
end
