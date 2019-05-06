#キーを引数分あげるプログラムです。

#ドレミファソラシドをアルファベットに変換して配列に入れています。
KEY = [
  'c','c#','d','d#','e','f','f#','g','g#','a','a#','b'
]

class KaraokeMachine
  attr_reader :melody

  def initialize(melody)
    @melody = melody
    new_array = []
  end

  #与えられた引数分コードをあげる
  def up_key(n)
    #インデックスに引数を足して返す。11以上はない為超えたら12を引いて返す
    new_index = melody_array.map do |i|
      if add(i,n) > 11
        add(i,n) - 12
      else
        add(i,n)
      end
    end

    # 新しいインデックスに対応する要素配列に入れて結合する
    new_array = new_index.map do |i|
      KEY[i]
    end
    new_array.join
  end

  private
  #メロディーを配列に入れ、各要素のインデックスを調べ配列に入れ返す
  def melody_array
    melody.chars.map do |m|
      KEY.index(m)
    end
  end

  def add(a,b)
    a + b
  end
end
