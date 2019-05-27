require './black_jack/player'
require './black_jack/card'
require './black_jack/controller'

p '今からブラックジャックを始めます'
p 'ディーラーとプレイヤーに2枚ずつカードを配ります。'

@dealer = create_player
@player = create_player

p "ディーラーの#{@dealer.hand_index(0)}"
p "あなたの#{@player.hand_index(0)}"
p "あなたの#{@player.hand_index(1)}"

2.upto(15) do |i|
  p 'カードを引きますか？(y/n)'
  input = gets.chomp

  if input == 'y'
    @player.draw
    p "あなたの引いたカードは#{@player.hand[i][0]}の#{@player.hand[i][1]}です"
  else
    break
  end

  if @player.card_sum > 21
    p '合計が21を超えました！！！'
    p 'プレイヤーの負けです！！！'
    exit
  end
end

p 'では、次にディーラーが引いていきたいと思います。'

while @dealer.card_sum < 17
  @dealer.draw
end

p '両者引き終わりました。'
p '勝者は....'

p @player.battle(@dealer)

p 'プレイヤーのカード'
p @player.card_index

p 'ディーラーのカード'
p @dealer.card_index
