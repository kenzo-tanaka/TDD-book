class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(other)
    from == other.from && to == other.to
  end

  def hash_code
    0
  end
end
