# 先頭の文字を何回か後ろに持っていった文字列と元の文字列が与えられる。
# 後ろの文字を何回先頭に持ってきたら元に戻るかを数える
# 例 'aizap','paiza' => 1
def rotation_str(str1,str2)
  i = 0
  rotate_str = ''
  while rotate_str != str2
    if rotate_str.empty?
      rotate_str = rotate_join(str1)
    else
      rotate_str = rotate_join(rotate_str)
    end
    i += 1
  end
  i
end


def rotate_join(str)
  str.chars.rotate(-1).join
end
