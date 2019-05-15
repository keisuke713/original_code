# 数字が4つ入った配列が5個入った配列が与えられる。
# 縦、横のそれぞれの値の合計を新たに配列に加え返す。
# 例
# input = [
#   [1, 2, 3, 4,],
#   [2, 3, 4, 5,],
#   [3, 4, 5, 6,],
#   [4, 5, 6, 7,],
#   [5, 6, 7, 8,],
# ]
#
# output = [
#   [1, 2, 3, 4, 10],
#   [2, 3, 4, 5, 14],
#   [3, 4, 5, 6, 18],
#   [4, 5, 6, 7, 22],
#   [5, 6, 7, 8, 26],
#   [15,20,25,30,90],
# ]

class SumMatrix
  attr_reader :array_num

  def initialize(array_num)
    @array_num = array_num
  end

  def sum
    @array_num.each { |column| column << column.sum }
    @array_num << @array_num.transpose.map(&:sum)
  end

  def output
    sum.each { |array|
      puts array.map { |n| n.to_s.rjust(sum.last.last.size) }.join('|')
    }
  end
end
