class Player
  attr_reader :hand

  # 引いたカードを入れる配列
  def initialize
    @hand = []
  end

  # カードを引く処理。既に持っているカードを引いたらやり直し
  def draw
    @hand.uniq!
    card = Card.new(Card::MARK.sample, Card::NUMBER.sample)
    @hand << [card.mark, card.number]
    unless @hand.count == @hand.uniq.count
      draw
    end
    @hand
  end

  # 手札の内容
  def hand_index(i)
    "#{i + 1}枚目は#{self.hand[i][0]}の#{self.hand[i][1]}です"
  end

  # プレイヤーのカードの合計がディーラーのカードの合計と比較する
  def battle(other)
    result = (card_sum - 21).abs <=> (other.card_sum - 21).abs
    if result == -1
      'プレイヤーです!!!'
    elsif result == 0
      '引き分けです!!!'
    else
      'ディーラーです!!!'
    end
  end

  # カードの合計を出す。
  def card_sum
    sum = 0
    @hand.each do |num|
      if num[1] > 10
        sum += 10
      else
        sum += num[1]
      end
    end
    sum
  end

  # 手札の一覧を返す
  def card_index
    hand.map { |num| "#{num[0]}の#{num[1]}" }.sort.join(',')
  end
end
