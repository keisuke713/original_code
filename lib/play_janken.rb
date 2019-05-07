#じゃんけんをプログラミングでできるようにしてみました。

JANKEN = ['rock', 'scissors', 'paper']
$opponent = ''

def play_janken
  # 相手の手はランダムで、自分の手を入力で決めます
  $opponent = JANKEN.sample
  puts 'あなたは何を出す？'
  own = gets.chomp

  return 'あいこ' if index(own) == index($opponent)

  if index(own) == 0
    compare(1)
  elsif index(own) == 1
    compare(2)
  elsif index(own) == 2
    compare(0)
  end
end
# 出して手のインデックスを返します。
def index(a)
  JANKEN.index(a)
end
# じゃんけんの勝敗を返します。
def compare(i)
  return '勝ち' if index($opponent) == i
  '負け'
end
