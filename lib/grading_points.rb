#授業の欠席回数、テストの点を入力し、テストの点 - 5 * 授業の欠席回数が25を超えたら合格にする
#テストの点 80, 欠席10回の場合  80 - 10 * 5 = 30 => 合格
class Addending_student
  attr_reader :absent_num, :test_point

  def initialize(absent_num, test_point)
    @absent_num = absent_num
    @test_point = test_point
  end

  def test_pass?
    self.test_point - (5 * self.absent_num) >= 25
  end

  def result
    if test_pass?
      '合格'
    else
      '不合格'
    end
  end
end
