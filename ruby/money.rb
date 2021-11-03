class Money
  attr_accessor :amount

  def ==(other)
    (amount == other.amount) && (self.class.name == other.class.name)
  end
end
