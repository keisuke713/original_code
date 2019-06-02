require './lib/janken'

puts 'ジャンケンをします'
puts 'あなたは何を出しますか？'

own = gets.chomp

self_strategy = Janken.new(own)
opponent = Janken.new(JANKEN.sample)

p self_strategy.play(opponent)
