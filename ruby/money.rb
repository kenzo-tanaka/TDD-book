class Money
  attr_reader :amount, :currency

  def ==(other)
    (amount == other.amount) && (self.class.name == other.class.name)
  end

  def self.dollar(amount)
    Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    Franc.new(amount, 'CHF')
  end
end
