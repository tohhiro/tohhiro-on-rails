scores = {english: 70, math: 90, science: 80}
scores.each do |key, value|
  puts "#{key.capitalize} Score: #{value}" # capitalizeメソッドで最初の文字を大文字に変換
end