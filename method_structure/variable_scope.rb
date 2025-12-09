def triple(num)
  result = num * 3
  return result
end

puts triple(10)

# 関数内の変数はローカル変数なので、関数の外からは参照できない
# つまり、以下のコードはエラーになる
puts num