# 検索サイトのページ分割機能を作りました。
# search_numは総件数、num_per_pageは1ページに表示される件数、
# split_pageメソッドは渡された数字のページを返します。
# 例 Page.new(1..15,5).split_page(3) => [11, 12,13,14,15]

class Page
  attr_reader :search_num, :num_per_page
  def initialize(search_num, num_per_page)
    @search_num = search_num
    @num_per_page = num_per_page
  end

  def split_page(page_num)
    (1..search_num).each_slice(num_per_page).to_a[page_num - 1]
  end
end
