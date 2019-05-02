# 受験の結果判定システムを作る
# 一人につき受験者番号、理系文系コード(理系なら's',文系なら'h')が与えられる
# 理系なら5科目の合計が360以上かつ数学、理科の合計が160以上の時に合格
# 文系なら5科目の合計が360以上かつ国語、社会の合計が160以上の時に合格
# なお、与えられる得点の順番は左から英語、数学、理科、国語、社会である

REGEXP = /(\d+) ([s,h]) (\d+) (\d+) (\d+) (\d+) (\d+)/
$pass_id = [] #合格者を入れる配列
$student = [] #一人の受験生の受験者番号、理系文系コード、5科目の得点を入れる配列
$i = 0

def pass_judgment(result_pass)
  $student = result_pass.scan(REGEXP)
  while $i < $student.length
    if sum_all_score?
      if science?
        sum_two_score(score_array[1],score_array[2])
      else
        sum_two_score(score_array[3],score_array[4])
      end
    end
    $i += 1
  end
  $pass_id
end

#理系ならtrueを返す
def science?
  $student[$i][1] == 's'
end

#合計得点が360を超えているかどうか
def sum_all_score?
  sum = 0
  score_array.each do |p|
    sum += p
  end
  sum >= 360
end

#理系なら数学と理科、文系なら国語と社会の合計が160を超えていれば合格者一覧に受験者番号を入れる
def sum_two_score(score1,score2)
  $pass_id << $student[$i][0] if (score1 + score2) >= 160
end

#正規表現で配列に入っている受験者番号、理系文系コード、各科目の得点の内、得点のみを配列に入れ返す
def score_array
  $student[$i][2..6].map( &:to_i )
end
