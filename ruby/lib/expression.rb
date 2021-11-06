class Expression
  def reduce(bank, to)
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end
