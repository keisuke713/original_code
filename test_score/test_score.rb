# 複数人に４科目のテストを受けてもらい、1科目目のテストの得点、または平均点が高い順に並べます。

class TestScore
  attr_reader :result_score

  def initialize(result_score)
    @result_score = result_score
  end

  def sort_ruby
    sort_score = @result_score.scan(/\p{Han}+,(\d+)/).flatten
                              .map(&:to_i).sort.reverse
    standard_ruby_sort = sort_score.map do |score|
      @result_score.scan(/(\p{Han}+),#{score}/).flatten[0] + ",#{score}"
    end
  end

  def average
    # 得点を取得
    each_score = @result_score.scan(/(\d+),(\d+),(\d+),(\d+)/)
    # 平均を出して降順にする
    average_sort = each_score.map { |arr| calc_average(arr, arr.length) }.sort.reverse
    # 平均点に基づく名前を取得する
    each_score_with_name = @result_score.scan(/(\p{Han}+),(\d+),(\d+),(\d+),(\d+)/)
    #平均点と名前を入れる
    ave_arr = each_score_with_name.map do |arr|
      arr[0] + ',' + (calc_average(arr, arr.length - 1)).to_s
    end
    # 平均点だけの文に名前を付け加える
    average_sentence = average_sort.join('p')
    ave_arr.each do |arr|
      ave_score = arr.scan(/(\d+.\d)/)
      average_sentence.gsub!(ave_score.flatten[0], arr)
    end
    average_sentence.split('p')
  end

  def calc_average(arr, length)
    arr.map(&:to_i).sum.to_f / length
  end
end
