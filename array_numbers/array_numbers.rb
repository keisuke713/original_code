# 数字の配列が複数与えられます。
# 要素をどこかで区切ることによって両者の合計は同じ数になります。
# どこで区切れば左右の数の合計が同じ数になるか返すプログラムを作ります。
# また、返す際は左辺をA,右辺をBの文字列にします。
# 例 input = [
# [3, 7, 4, 5, 1],
# [6, 9, 1, 8, 8],
# [11, 2, 5, 2, 2]
# ]
#
# output = [
#   %w(A A B B B),
#   %w(A A A B B),
#   %w(A B B B B)
# ]

class ArrayNumbers
  def initialize(arr_num)
    @arr_num =  arr_num
  end

  def separate
    @arr_num.map do |row|
      1.upto(row.size) { |i|
        if row[0...i].sum == row[i..-1].sum
          break ["A"] * i + ["B"] * (row.size - i)
        end
      }
    end
  end
end

#使用例

input = [
[3, 7, 4, 5, 1],
[6, 9, 1, 8, 8],
[11, 2, 5, 2, 2]
]

p ArrayNumbers.new(input).separate
#=>["A", "A", "B", "B", "B"],
 # ["A", "A", "A", "B", "B"],
 # ["A", "B", "B", "B", "B"]
