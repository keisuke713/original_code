# 複数の英単語が入った文字列が与えられる。
# 何の単語が何個入っているかを返す。
# 例 input 'Ruby Java Php Ruby Ruby Php'
# => "Java => 1, Php => 2, Ruby => 3"
# なお、渡される単語は頭大文字、文字の間にはスペースを持つものとする。

class CountWord
  def initialize(word)
    @word = word
  end

  def count_word
    array_word = @word.scan(/[A-Z][a-z]*/)
    array_word.each_with_index { |w,i|
      array_word[i] = "#{w} => #{array_word.count(w)}"
      array_word.delete(w)
    }.sort.join(', ')
  end
end

p CountWord.new('Java Ruby Php Ruby Ruby Php').count_word
