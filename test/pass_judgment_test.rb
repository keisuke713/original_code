require 'minitest/autorun'
require './lib/pass_judgment'

class PassJudgment < Minitest::Test
  def test_pass_judgment
    a = <<~TEXT
    1 h 90 90 90 90 90
    2 s 90 20 20 90 90
    3 h 90 90 90 90 90
    TEXT
    assert_equal ['1','3'],pass_judgment(a)
  end
end
