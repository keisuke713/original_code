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
    puts %q!  B|  I|  N|  G|  O|!
    @numbers.transpose.each { |array|
      array.each { |n|
        print n.to_s.rjust(3) + '|'
      }
      puts
    }
  end
end

p Bingo.new.to_s
