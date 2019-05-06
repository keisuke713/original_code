#メロディーを配列に入れ、各要素のインデックスを調べ配列に入れる
index = melody.chars.map do |m|
  KEY.index(m)
end

def melody_array
  melody.chars.map do |m|
    KEY.index(m)
  end
end
