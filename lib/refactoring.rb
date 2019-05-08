RANGE_NUM.each_with_index { |i, index|
  if n == 3 && index == 2
    "%4d" % 1
  else
    print choose_num(i)
  end
}

1.upto(5) { |n|
  RANGE_NUM.each do |i|
    print choose_num(i)
  end
  puts n
}

2.times do
  RANGE_NUM.each do |i|
    print choose_num(i)
  end
  puts
end

print choose_num('1'..'15')
print choose_num('16'..'30')
print '|'.rjust(4)
print choose_num('46'..'60')
print choose_num('61'..'75')
puts

2.times do
  RANGE_NUM.each do |i|
    print choose_num(i)
  end
  puts
end
