class Bank
  attr_reader :rates

  def initialize
    @rates = {}
  end

  # 為替レートはBankが一手に管理したいので
  # bankのインスタンスを渡す
  def reduce(source, to)
    source.reduce(self, to)
  end

  # TODO:
  # 本来はPairクラスを使ってレートを管理したいが
  # オブジェクトを格納する形だとうまく取得できないので
  # ハッシュで一次対応している
  def add_rate(from, to, rate)
    # pair = Pair.new(from, to)
    pair = { from: from, to: to }
    rates[pair] = rate
  end

  def rate(from, to)
    return 1 if from == to

    # pair = Pair.new(from, to)
    pair = { from: from, to: to }
    rates[pair]
  end
end
