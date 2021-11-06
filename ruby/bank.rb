class Bank
  # 為替レートはBankが一手に管理したいので
  # bankのインスタンスを渡す
  def reduce(source, to)
    source.reduce(self, to)
  end

  def add_rate(from, to, rate); end
end
