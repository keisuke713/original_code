# 小学生で習うさくらんぼ計算をイメージしています。
# 二つの数字を数字を三つに分けます。一つ目はそのまま。二つ目は10から一つ目の数字を引いた数。
# そして三つ目は最初にもらった二つ目の数字から二つ目の数字を引いた数です。
# 例 5, 9 => 5, 5, 4
# ※最初にもらう二つの数字の合計は必ず10を超えるものとする。

def cherry_calc(n1, n2)
  num = []
  num.push(n1, 10 - n1, n2 - (10 - n1))
  num.join(', ')
end