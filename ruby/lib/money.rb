class Money < Expression
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    (amount == other.amount) && (currency == other.currency)
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def plus(addend)
    Sum.new(self, addend)
  end

  def reduce(bank, to)
    rate = bank.rate(currency, to)
    Money.new(amount / rate, to)
  end

  def self.dollar(amount)
    Money.new(amount, 'USD')
  end

  def self.franc(amount)
    Money.new(amount, 'CHF')
  end
end
