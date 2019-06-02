require 'minitest/autorun'
require './lib/exam_candidate'

class ExamCandidateTest < Minitest::Test
  def setup
    @keisuke = ExamCandidate.new(1, 'h', 90, 90, 90, 90, 90)
    @manami = ExamCandidate.new(2, 's', 90, 20, 20, 90, 90)
    @yuuta = ExamCandidate.new(3, 'h', 90, 90, 90, 90, 30)
    @all_exam_candidate = []
    @all_exam_candidate.push(@keisuke, @manami, @yuuta)
  end

  def test_pass_judgment
    success_candidate_numbers = []
    @all_exam_candidate.each do |candidate|
      if candidate.result_exam
        success_candidate_numbers << candidate.exam_num
      end
    end
    assert_equal [1], success_candidate_numbers
  end
end
