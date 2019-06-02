# # 受験の結果判定システムを作る
# # 一人につき受験者番号、理系文系コード(理系なら's',文系なら'h')が与えられる
# # 理系なら5科目の合計が360以上かつ数学、理科の合計が160以上の時に合格
# # 文系なら5科目の合計が360以上かつ国語、社会の合計が160以上の時に合格
# # なお、与えられる得点の順番は左から英語、数学、理科、国語、社会である
#
class ExamCandidate
  attr_reader :exam_num, :major_sub, :test_points
  def initialize(exam_num, major_sub, english, math, science,social, japanese)
    @exam_num = exam_num
    @major_sub = major_sub
    @test_points = {
      english: english, math: math, science: science, social: social, japanese: japanese
    }
  end

  def result_exam
    if major_sub == 'h'
      test_pass?(:social, :japanese, sum_points)
    elsif major_sub == 's'
      test_pass?(:math, :science, sum_points)
    end
  end

  private

  def test_pass?(major_sub1, major_sub2, sum)
    test_points[major_sub1] + test_points[major_sub2] >= 160 && sum >= 360
  end

  def sum_points
    sum = 0
    test_points.each do |sub, points|
      sum += points
    end
    sum
  end
end
