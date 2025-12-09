def dividable?(x, y)
  if y == 0
    # 明示的にreturnと記載し、早期リターンする
    # returnがないと、最後の評価結果が返されるためZeroDivisionErrorになる
    return false
  end
  if x % y == 0
    true
  else
    false
  end
end

puts dividable?(10, 2) # true
puts dividable?(10, 3) # false
puts dividable?(10, 0) # falseにしているが、throw new Errorでも良い

# 引数rateにデフォルト引数を設定する
def get_total(price, amount, rate = 1.1)
  price * amount * rate
end

puts get_total(100, 10)
puts get_total(250, 4, 1.08)