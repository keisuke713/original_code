# ガラケーの文字出力のプログラムを作成しました。
# 例
# input => 440330555055506660
# output => 'hello'

CHARS = [
  %W(. , ! ?),
  %w(a b c),
  %w(d e f),
  %w(g h i),
  %w(j k l),
  %w(m n o),
  %w(p q r s),
  %w(t u v),
  %w(w x y z),
]

class Phone
  def initialize(number)
    @number = number
  end

  def output_cha
    @number.split('0').map { |n| CHARS[n[1].to_i - 1][n.size - 1] }.join('')
  end
end
