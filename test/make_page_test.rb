require 'minitest/autorun'
require './lib/make_page'

class MakePageTest < Minitest::Test
  def setup
    @page = Page.new(15,5)
    @page2 = Page.new(100,10)
  end

  def test_make_page
    assert_equal [6,7,8,9,10], @page.make_page(2)
    assert_equal [1,2,3,4,5,6,7,8,9,10], @page2.make_page(1)
  end
end
