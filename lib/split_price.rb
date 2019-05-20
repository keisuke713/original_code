def split_price(price)
  a = []
  if price
    return price.scan(/(^\d+.*\d)(.*)$/).flatten if price[0] =~ /\d/
    a = [price, '']
  else
    a = ['','']
  end
end
