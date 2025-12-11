scores = [70, 90, 80]

# 配列が空かどうかを調べる（empty?メソッド）
p scores.empty?

# 配列に特定の要素が含まれているかを調べる（include?メソッド）
p scores.include?(90)

# 配列の要素のインデックスを調べる（indexメソッド）
p scores.index(80)  # インデックスを返す（indexメソッド）
p scores.index(100) # 要素が存在しない場合はnilを返す

# 配列の要素を昇順に並び替える（sortメソッド）配列をコピーしたものをソートする
sorted_scores = scores.sort
p sorted_scores
p scores  # 元の配列は変更されないので、sortsメソッドは非破壊的

# 配列の要素を降順に並び替える（sortメソッドとreverseメソッドの組み合わせ）
sorted_scores_desc = scores.sort.reverse
puts "降順に並び替えた結果:"
p sorted_scores_desc

# 配列の要素を逆順にする（reverseメソッド）
puts "単純に逆順にした結果:"
sorts_desc = scores.reverse
p sorts_desc

# 配列の要素を破壊的に昇順に並び替える（sort!メソッド）
# rubyでは、!がつくメソッドは破壊的メソッドであることが多い
destroy_sort = scores.sort!
puts "破壊的に昇順に並び替えた結果:"
p destroy_sort
p scores  # 元の配列も変更されるので、sort!メソッド