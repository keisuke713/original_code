# エクセルのオートフィル機能を作りました。
# 引数に何マス先まで計算するか、最初に入力されている数を渡して計算をして返します。
# 例
# input = [
#   3 ,
#   [1, 2],
#   [3, 4],
# ]
#
# output = [
#   [1, 2, 3, 4, 5],
#   [3, 4, 5, 6, 7],
#   [5, 6, 7, 8, 9],
#   [7, 8, 9, 10, 11],
#   [9, 10, 11, 12, 13]
# ]

class AutoFill
  def initialize(num)
    @num = num
  end

  #結合して出力
  def output
    auto_calc.each do |arr|
    p  arr.map { |n| n.to_s.rjust(3) }.join()
    end
  end

  # 列と行の合計をそれぞれ返す
  def auto_calc
    sum_row = transpose_arr(@num[1..-1])
    transpose_arr(sum_row)
  end

  def transpose_arr(array)
    array.transpose.each { |arr| sum(arr) }
  end

  def sum(arr)
    @num[0].times do
      arr << arr[-1] + dif(arr)
    end
  end

  # 数字が何個ずつ増えているか返す
  def dif(arr)
    arr[1] - arr[0]
  end
end
