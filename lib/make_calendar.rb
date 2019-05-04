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
  start_day = Date.new(year,month,1)
  end_day = Date.new(year,month,-1)

  puts "\t#{TRANSLATE_MONTH[month]} #{year}"
  
  WEEK_DAY.each do |key,value|
    if Sat?(key)
      puts value
    else
      print value
    end
  end

  (start_day..end_day).each do |d|
    if d.day == 1
      if Sat?(d.wday)
        puts "#{d.day.to_s.rjust(space(d.wday))} "
      else
        print "#{d.day.to_s.rjust(space(d.wday))} "
      end
    else
      if d.day >= 10
        if Sat?(d.wday)
          puts one_space(d.day)
        else
          print one_space(d.day)
        end
      else
        if Sat?(d.wday)
          puts two_space(d.day)
        else
          print two_space(d.day)
        end
      end
    end
  end
end

#曜日ごとに異なるスペースを渡す
def space(d)
  4 * (d + 1) - 1
end

#土曜日ならtrueを返す
def Sat?(d)
  d == 6
end

#一文字スペースを作る
def one_space(d)
   " #{d} "
end

#2文字スペースを作る
def two_space(d)
   "  #{d} "
end



puts make_calendar(2019, 7)
