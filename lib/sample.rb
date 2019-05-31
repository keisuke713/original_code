def find_differ_num(numbers)
  check_odd_or_even = numbers.split(' ').map(&:to_i).map(&:odd?)
  if check_odd_or_even.count(true) > 1
    index = check_odd_or_even.index(false)
  else
    index = check_odd_or_even.index(true)
  end
  "#{index + 1}番目の数字が仲間外れだね"
end

p find_differ_num('1 3 6 3 5')
