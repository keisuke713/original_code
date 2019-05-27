class Card
  MARK = ['spade', 'heart', 'diamond', 'club'].freeze
  NUMBER = [
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
  ].freeze

  attr_reader :mark, :number

  def initialize(mark,number)
    @mark = mark
    @number = number
  end
end
