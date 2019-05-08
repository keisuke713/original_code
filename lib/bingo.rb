# ビンゴを作成しました。
# 左の列から1~15,16~30,31~45,46~60,61~75からランダムに抽出し、真ん中は空白にします。
RANGE_NUM = [
  ('1'..'15'), ('16'..'30'), ('31'..'45'), ('46'..'60'), ('61'..'75')
]

class Bingo
  def generate_card
    puts %q!  B|  I|  N|  G|  O|!
    # 配列の各要素からランダムに抽出する挙動を5回繰り返します。
    # 3列目、3行目(真ん中)の時は空白にします。
    1.upto(5) { |n|
      RANGE_NUM.each_with_index { |range, index|
        next print choose_num(range) unless n == 3 && index == 2
        print '|'.rjust(4)
      }
      puts
    }
  end

  def choose_num(range)
    (range).to_a.sample.rjust(3) + '|'
  end
end
