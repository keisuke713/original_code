# 渡されたログから指定された文字列を含むログのみ抽出する
def log_filter(str)
  examined_str = str[1..-1]
  i = 0
  while i < examined_str.length
    include_str = examined_str.select { |s|
      s.include?(str[0])
    }
    i += 1
  end

  return include_str if include_str.length > 1
  'None'
end
