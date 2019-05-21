# 検索サイトのページ分割機能を作りました。
# search_numは総件数、break_numは1ページに表示される件数、
# make_pageメソッドは渡された数字のページを返します。
# 例 Page.new(1..15,5).make_page(3) => [11, 12,13,14,15]

class Page
  def initialize(search_num, break_num)
    @search_num = search_num
    @break_num = break_num
  end

  def make_page(page)
    (1..@search_num).each_slice(@break_num).to_a[page - 1]
  end
end
