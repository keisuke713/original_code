# クレジットカード番号は16桁の番号で表すことができますが、この番号は以下の性質を持っています。
# 一番右の桁を1桁目として、
# ・偶数桁の数字をそれぞれ2倍し総和をとったものをeven 
# （ただし、2倍したあと2桁の数字になるものは、1の位と10の位の数を足して1桁の数字にしたあと、総和をとる）
# ・奇数桁の数字の総和をとったものをodd
# とすると、even + odd は10 で必ず割り切れます。
#
# 2~15桁目が与えられるのでそれを基に1桁目の数字を返します。

def check_digit(credit_num)

  even = 0
  split_array(to_array(credit_num))[0].map(&:to_i).each do |n|
    if 2 * n > 9
      to_array(2 * n).each { |n| even += n.to_i }
    else
      even += 2 * n
    end
  end

  odd = 0
  split_array(to_array(credit_num))[1].map(&:to_i).each do |n|
    odd += n
  end
  # 中身を全てたす
  10 - ((odd + even) % 10)
end

#渡された数字を二つの配列に分けるメソッド
def split_array(array)
  array.partition.with_index { |n,i| i.even? }
end

#渡された数字を1桁ずつ配列に入れる
def to_array(numbers)
  numbers.to_s.chars
end
