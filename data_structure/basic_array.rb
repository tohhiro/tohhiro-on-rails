scores = [70, 90, 80]
scores << 100
# 改行されながら出力される
puts scores

# 配列構造をそのまま出力する
p scores

# インデックスを指定して要素を取り出す
p scores[0]

# lengthメソッドとsizeメソッドで配列の要素数を取得する
p scores.length
p scores.size

# 配列に要素を追加する（pushメソッド、<<演算子）
scores.push(85)
scores << 95
p scores

# 配列に別の配列を結合する
more_scores = [50, 60]
scores += more_scores
p scores

# インデックスを指定して、意図した位置に要素を挿入する（insertメソッド）
scores.insert(1, 75)
p scores

# インデックスを指定して配列の要素を削除する（deleteメソッド、delete_atメソッド）
scores.delete_at(0)
p scores