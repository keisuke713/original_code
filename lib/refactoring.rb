  if own == 'rock'
    compare('scissors')
  elsif own == 'scissors'
    compare('paper')
  elsif own == 'paper'
    compare('rock')
  end
end

def compare(i)
  return '勝ち' if $opponent == i
  '負け'
end
