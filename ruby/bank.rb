class Bank
  def reduce(source, to)
    return source if source.instance_of?(Money)

    source.reduce(to)
  end
end
