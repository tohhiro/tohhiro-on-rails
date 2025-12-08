# rubyでは、falseとnil以外はすべてtrueとみなされる
# JSでは、0や空文字列もfalseとみなされるので注意

puts "falseで表示される"
puts false
puts nil

puts "trueで表示される"
puts true
puts 0
puts ""


# 整数同士の除算はエラーになる
# puts 1 / 0  # ZeroDivisionError
# puts 0 / 0 # ZeroDivisionError

# 浮動小数点数ならNaNやInfinity
puts 1.0 / 0.0  # Infinity
puts 0.0 / 0.0  # NaN
