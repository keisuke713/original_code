# ドリンク3本買うごとに1本貰えるシステムです。
# 例 3本購入→4本,11本購入→16本,100本購入→149本

class BonusDrink
  def initialize(buy_number)
    @buy_number = buy_number
  end

  def get_drink
    sum_number = [@buy_number]
    while sum_number[-1] > 2
      sum_number << sum_number[-1] / 3
      sum_number << sum_number[-2].divmod(3).sum
    end

    sum = 0
    sum_number.select.with_index { |drink, i| i.odd? }
              .each { |n| sum += n }
    sum * 3 + sum_number[-1]
  end
end
