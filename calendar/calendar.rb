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

class Calendar
  attr_reader :year, :month

  def initialize(year, month)
    @year = year
    @month = month
    @sun_array = %w(Sun)
    @mon_array = %w(Mon)
    @tue_array = %w(Tue)
    @wed_array = %w(Wed)
    @thu_array = %w(Thu)
    @fri_array = %w(Fri)
    @sat_array = %w(Sat)
    @month_array = [
      @sun_array, @mon_array, @tue_array, @wed_array, @thu_array, @fri_array, @sat_array
    ]
  end

  def arrange_space
    generate.map { |week_array|
      week_array.map(&:to_s).map { |n| n.rjust(3) }
    }.transpose
  end

  def output
    puts "\t#{TRANSLATE_MONTH[month]} #{year}"
    arrange_space.each { |week| puts week.join(' ') }
  end

  private

  def generate
    first_day = Date.new(year, month, 1)
    last_day = Date.new(year, month, -1)

    create_space(0, (first_day.wday - 1))

    (first_day..last_day).each do |d|
      @month_array[d.wday] << d.day
    end

    create_space((last_day.wday + 1), 6)

    @month_array
  end

  def create_space(begin_day, end_day)
    (begin_day..end_day).each do |i|
      @month_array[i] << ' '
    end
  end
end
