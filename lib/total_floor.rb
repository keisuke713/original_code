#エレベーターが移動した階数を返します。
#１階→8階→4階と移動 => 11と返す
def total_floor(floor)
  sum_floor = []
  sum_floor << floor[0] - 1
  i = 1
  while i < floor.length
    sum_floor << floor[i] - floor[i -= 1]
    i += 2
  end
  sum_floor.inject(0) { |result, n|
    result + n.abs
  }
end
