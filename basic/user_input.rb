print "あなたの名前を教えてください。 " # printは改行しない。つまり同じ行に入力できる。
name = gets
puts "-" * 10 # 区切り線を表示10回繰り返し表示する
name[0] = "*"
puts "あなたの名前は#{name.chomp}さんですね！"
puts "-" * 10