# ガラケーの文字出力のプログラムを作成しました。
# 例
# input => 440330555055506660
# output => 'hello'

CHARS = [
  %w(. , ! ?),
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
  def initialize(push_num)
    @push_num = push_num
  end

  def output_chars
    puts char_in_array.join('')
  end

  def char_in_array
    @push_num.split('0').map { |num| select_char(num) }
  end

  private

  def select_char(num)
    key = num[0].to_i - 1
    (CHARS[key] * 2)[num.size - 1]
  end
end
