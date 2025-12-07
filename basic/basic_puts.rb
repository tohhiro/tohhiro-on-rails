puts 10
puts -8
puts 2.5
puts "hoge"
puts true
puts false
puts nil
puts [1, 2, 3]
puts({ a: 1, b: 2 })

# JSと同じ挙動
puts 1_000_000
puts 10 % 3
puts 10 + 2 * 3 # 数学の優先順位通りに計算される
puts 1.2e3 # 1.2に10の3乗をかける
puts 1.2e-3 # 1.2に10の-3乗をかける

# Rubyの癖
puts 10 / 3 # rubyでは、整数同士の割り算は整数になる（JSでは小数点まで求めるため、仕様の差分がある）
puts 10.0 / 3 # 小数点で求めたいときは、どちらか一方を小数にする


puts "Hello, \nWorld!" # ダブルクォートではエスケープシーケンスが有効になる
puts 'Hello, \nWorld!' # シングルクォートでは、エスケープシーケンスが無効になる
name = "Alice"
puts "Hello, #{name}!" # ダブルクォートでは、#{}の中に式を入れられる
puts 'Hello, #{name}!' # シングルクォートでは無効