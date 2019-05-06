require 'date'
TRANSLATE_MONTH = {
  1 => 'January',
  2 => 'Feburary',
  3 => 'March',
  4 => 'April',
  5 => 'May',
  6 => 'June',
  7 => 'July',
  8 => 'August',
  9 => 'September',
  10 => 'October',
  11 => 'November',
  12 => 'December'
}

WEEK_DAY = {
  0 => 'Sun ',
  1 => 'Mon ',
  2 => 'Tue ',
  3 => 'Wed ',
  4 => 'Thu ',
  5 => 'Fri ',
  6 => 'Sat'
}

def make_calendar(year,month)
  first_day = Date.new(year,month,1)
  second_day = Date.new(year,month,2)
  end_day = Date.new(year,month,-1)

  puts "\t#{TRANSLATE_MONTH[month]} #{year}"

  WEEK_DAY.each do |key,value|
    print value
    puts if sat?(key)
  end

  print "#{'1'.rjust(space(first_day.wday))} "
  puts if sat?(first_day.wday)

  (second_day..end_day).each do |d|
    print "%3d" % d.day
    if sat?(d.wday)
      puts
    else
      print ' '
    end
  end
end

#曜日ごとに異なるスペースを渡す
def space(d)
  4 * (d + 1) - 1
end

#土曜日ならtrueを返す
def sat?(d)
  d == 6
end
