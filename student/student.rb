#授業の欠席回数、テストの点を入力し、テストの点 - 5 * 授業の欠席回数が25を超えたら合格にする
#テストの点 80, 欠席10回の場合  80 - 10 * 5 = 30 => 合格
class Student
  attr_reader :absent_num, :test_point

  def initialize(absent_num, test_point)
    @absent_num = absent_num
    @test_point = test_point
  end

  def result_test
    test_pass? ? '合格' : '不合格'
  end

  private

  def test_pass?
    finaly_test_point = test_point - (5 * absent_num)
    finaly_test_point >= 25
  end
end
