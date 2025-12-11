scores = [70, 90, 80]
scores.each do |score|
  puts "Score: #{score}"
end

scores.each_with_index do |score, index|
  puts "Score #{index}: #{score}"
end

puts "----- 別の書き方 -----" # do end の代わりに波括弧{}を使う書き方
scores.each { |score| puts "Score: #{score}" }
scores.each_with_index { |score,index| puts "Score #{index}: #{score}" }

puts "----- mapメソッドの例 -----"
# 冗長なmapの書き方
update_scores = []
scores.each do |score|
  update_scores << score + 5
end
p update_scores

# mapメソッドを使った書き方（JSのmapと同じイメージ）
update_scores2 = scores.map do |score|
  score + 5
end
p update_scores2

# 破壊的に配列の要素を変更するmap!メソッド
puts "----- map!メソッドの例 -----"
scores.map! do |score|
  score + 10
end
p scores