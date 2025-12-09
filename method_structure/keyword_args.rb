# キーワード引数を使う場合
def get_area(width:, height: 100)
  width * height
end

# キーワード引数を使う場合
puts get_area(width: 10, height: 20)
puts get_area(width: 15) # デフォルト値がある場合は省略可能
puts get_area(height: 30, width: 5) # 引数の順番を入れ替えても問題ない
# puts get_area(5, 8) # 呼び出しの引数にキーワードを使ってないのでエラーになる