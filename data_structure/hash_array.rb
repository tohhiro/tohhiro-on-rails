# キーを文字列にしたハッシュと配列の組み合わせ（PHPの連想配列に近いイメージ）
puts "----- ハッシュと配列の組み合わせ -----"
scores = {"english" => 70, "math" => 90, "science" => 80}
p scores # {"english"=>70, "math"=>90, "science"=>80}
puts scores

# シンボルをキーにしたハッシュ（高速化のためキーを文字列ではなくシンボルを使う）
puts "----- シンボルをキーにしたハッシュと配列の組み合わせ -----"
scores = {:english => 70, :math => 90, :science => 80}
p scores # {:english=>70, :math=>90, :science=>80}
puts scores

# シンボルをキーにしたハッシュ（新しい書き方）
puts "----- シンボルをキーにしたハッシュと配列の組み合わせ(新しい書き方) -----"
scores = {english: 70, math: 90, science: 80}
p scores # {:english=>70, :math=>90, :science=>80}
puts scores

# ハッシュのキーを指定して値を取り出す
puts "----- ハッシュのキーを指定して値を取り出す -----"
p scores[:english] # 70
p scores[:math]    # 90
p scores[:science] # 80

# ハッシュに新しいキーと値のペアを追加する
puts "----- ハッシュに新しいキーと値のペアを追加する -----"
scores[:history] = 85
p scores # {:english=>70, :math=>90, :science=>80, :history=>85}

# ハッシュのキーと値のペアを削除する
puts "----- ハッシュのキーと値のペアを削除する -----"
scores.delete(:science)
p scores # {:english=>70, :math=>90, :history=>85}

# ハッシュのキーの一覧を取得する（keysメソッド）
puts "----- ハッシュのキーの一覧を取得する -----"
keys = scores.keys
p keys # [:english, :math, :history]

# ハッシュの値の一覧を取得する（valuesメソッド）
puts "----- ハッシュの値の一覧を取得する -----"
values = scores.values
p values # [70, 90, 85]

# ハッシュの長さを取得する（lengthメソッド、sizeメソッド）
puts "----- ハッシュの長さを取得する -----"
p scores.length # 3 rubyではハッシュ（JSのオブジェクト）もlengthメソッドやsizeメソッドで要素数を取得できる
p scores.size   # 3

# ハッシュに特定のキーが含まれているかを調べる（key?メソッド、has_key?メソッド）
puts "----- ハッシュに特定のキーが含まれているかを調べる -----"
p scores.key?(:math)      # true
p scores.has_key?(:music) # false

# ハッシュに特定の値が含まれているかを調べる（value?メソッド、has_value?メソッド）
puts "----- ハッシュに特定の値が含まれているかを調べる -----"
p scores.value?(85)      # true
p scores.has_value?(100) # false