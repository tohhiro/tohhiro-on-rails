print "Score? :"
score = gets.to_i

if score < 0 || score > 100
  puts "Invalid score !!"
  exit(1)
end
# if文をあとで書く場合の一行書き
# 例えば、以下のようにも書ける
# (puts "Invalid score"; exit(1)) if score < 0 || score > 100
# puts "Invalid score" && exit(1) if score < 0 || score > 100

if score > 90 && score <= 100 # Rubyの場合、<==という演算子は存在せず、文字列と数字は比較できない（曖昧な比較と厳密演算子という2つの比較がなく、常に厳密に比較される）
  puts "A"
elsif score > 75 && score <= 90 # Rubyの場合、else ifはelsifと空白を入れずに書く
  puts "B"
elsif score > 60 && score <= 75
  puts "C"
else
  puts "D"
end # if文の終わりはendで示す