# 渡されたログから指定された文字列を含むログのみ抽出する
#例 指定する文字列'ub',調べる文字列['ruby', 'php'] => ruby

def log_filter(included_char,chars)
  extract_chars = chars.select { |char| char.include?(included_char) }
  extract_chars.size > 0 ? extract_chars : 'None'
end
