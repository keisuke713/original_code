# 複数日の始値、終値、高値、安値の四種類の株価が与えられます。
# その数日間の初日の始値、最終日の終値、一番高かった高値、一番低かった安値を返します。
# 例 a = <<~TEXT
# 始  終 高 低
# 11 14 16 10 初日
# 12 15 17  9 二日目
# 13 11 14 11 三日目
# TEXT
# =>'11,11,17,9'

FORMAT = /(\d+) +(\d+) +(\d+) +(\d+)/

def stock_check(stock)
  stock.scan(FORMAT).transpose.map.with_index { |array, i|
    case i
    when 0
      array[0]
    when 1
      array[-1]
    when 2
      array.map(&:to_i).max
    when 3
      array.map(&:to_i).min
    end
  }.join(' ')
end
