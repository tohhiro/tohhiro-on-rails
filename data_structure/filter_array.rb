scores = [70, 90, 80, 65, 85, 77]

# JSのfilterメソッドと同じイメージ
filtered_scores = scores.filter do |score|
  score >= 80
end
p filtered_scores

# 破壊的に配列の要素を変更するfilter!メソッド
puts "----- filter!メソッドの例 -----"
scores.filter! do |score|
  score >= 80
end
p scores