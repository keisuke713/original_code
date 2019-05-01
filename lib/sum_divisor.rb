#渡された値の約数を全て足した値を返す

def divisor(num)
  (1..num).select do |n|
    num % n == 0
  end
end

def sum_divisor(number)
  sum = divisor(number).inject(0) { |result, n| result + n}
end

puts sum_divisor(100)
