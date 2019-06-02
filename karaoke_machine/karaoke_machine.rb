#キーを引数分あげるプログラムです。

#ドレミファソラシドをアルファベットに変換して配列に入れています。

KEY = %w(c c# d d# e f f# g g# a a# b)

class KaraokeMachine
  attr_reader :melody, :up_key

  def initialize(melody, up_key)
    @melody = melody
    @up_key = up_key
  end

  #与えられた引数分コードをあげる
  def up_melody
    # 新しいインデックスに対応する要素配列に入れて結合する
    up_key_index.map { |i| (KEY * 2)[i] }.join
  end

  private

  def up_key_index
    melody_to_array.map { |i| i + up_key }
  end

  #メロディーを配列に入れ、各要素のインデックスを調べ配列に入れて返す
  def melody_to_array
    melody.chars.map { |m| KEY.index(m) }
  end
end
