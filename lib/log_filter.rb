# 渡されたログから指定された文字列を含むログのみ抽出する
#例 指定する文字列'ub',調べる文字列['ruby', 'php'] => ruby

def log_filter(str,chars)
  i = 0
  while i < chars.length
    include_chars = chars.select { |s|
      s.include?(str)
    }
    i += 1
  end

  return include_chars if include_chars.length != 0
  'None'
end
