# 一桁目が1~10の数字と二桁目が1~4の数字の２つの数字を持ったカードが複数枚ある。
# 一枚目を親としそれ以降を子とし、それぞれを比較していく。
# 一桁目が小さい方を勝ちとする。
# 一桁目が同じだったら二桁目を比較する。
# 二桁目は大きい方を勝ちとする。
# 例 a = <<~TEXT
# 5 2 #親
# 7 2 #子
# 1 4 #子
# 5 3 #子
# 5 1 #子
# TEXT
#
# => 2

FORMAT = /(\d*) (\d*)/

def high_low_check(card_number)
  card = card_number.scan(FORMAT).map { |array| array.map(&:to_i) }
  card[1..-1].map { |array|
    if array[0] < card[0][0]
      'win'
    elsif array[0] == card[0][0]
      'win' if array[1] > card[0][1]
    end
  }.count('win')
end
