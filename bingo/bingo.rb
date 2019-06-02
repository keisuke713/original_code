# ビンゴを作成しました。
# 左の列から1~15,16~30,31~45,46~60,61~75からランダムに抽出し、真ん中は空白にします。
class Bingo
  attr_reader :numbers

  def initialize
    @numbers =
      (1..75).each_slice(15)
             .map { |array| array.sample(5) }
             .tap { |array| array[2][2] = '' }
  end

  def to_s
    generate.each { |array_num|
      puts array_num.join
    }
  end

  private

  def generate
    bingo_row = @numbers.transpose.unshift(%w!B I N G O!)
    bingo_row.map { |array|
      array.map { |n| n.to_s.rjust(3) + '|' }
    }
  end
end

Bingo.new.to_s
