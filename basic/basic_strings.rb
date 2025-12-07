print "Your name please: "
name = gets.chomp # stripは改行に加え空白文字も取り除く
p name
puts "-" * 10

# どちらも文字列の長さを取得するメソッドで、同じ結果になる
puts name.length
puts name.size