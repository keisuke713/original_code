require 'minitest/autorun'
require './lib/count_word'

class CountWordTest < Minitest::Test
  def setup
    @user = CountWord.new('Java Ruby Php Ruby Ruby Php')
  end

  def test_count_word
    assert_equal "Java => 1, Php => 2, Ruby => 3", @user.count_word
  end
end
