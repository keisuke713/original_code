# クレジットカード番号は16桁の番号で表すことができますが、この番号は以下の性質を持っています。
# 一番右の桁を1桁目として、
# ・偶数桁の数字をそれぞれ2倍し総和をとったものをeven 
# （ただし、2倍したあと2桁の数字になるものは、1の位と10の位の数を足して1桁の数字にしたあと、総和をとる）
# ・奇数桁の数字の総和をとったものをodd
# とすると、even + odd は10 で必ず割り切れます。
#
# 2~15桁目が与えられるのでそれを基に1桁目の数字を返します。

class CreditCard
  attr_reader :credit_num

  def initialize(credit_num)
    @credit_num = credit_num
  end

  def return_last_digit
    even_num_array,odd_num_array = split_array(to_array(@credit_num))
    division_num = (odd_sum(odd_num_array) + even_sum(even_num_array)) % 10
    10 - division_num
  end

  private

  def odd_sum(odd_num_array)
    odd_sum = 0
    odd_num_array.map(&:to_i).each do |n|
      odd_sum += n
    end
    odd_sum
  end

  def even_sum(even_num_array)
    even_sum = 0
    even_num_array.map(&:to_i).each do |n|
      if 2 * n > 9
        to_array(2 * n).each { |n| even_sum += n.to_i }
      else
        even_sum += 2 * n
      end
    end
    even_sum
  end

  def split_array(array)
    array.partition.with_index { |n,i| i.even? }
  end

  def to_array(numbers)
    numbers.to_s.chars
  end
end
