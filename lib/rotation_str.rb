#先頭の文字を何回か後ろに持っていった文字列と元の文字列が与えられる。
#後ろの文字を何回先頭に持ってきたら元に戻るかを数える
#例 'aizap','paiza' => 1
def rotation_str(str1,str2)
  str1_array = str_to_array(str1)
  i = 0
  while str1_array.join != str2
    rotation(str1_array)
    i += 1
  end
  i
end
#文字列を分割して配列に入れるメソッド
def str_to_array(str)
  str.split('').map { |s| s }
end
#要素の最後を先頭に持ってくるメソッド
def rotation(array)
  array.prepend(array[-1]).delete_at(-1)
end
