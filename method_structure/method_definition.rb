# rubyでは、メソッドを使う前に定義しておく必要がある
def triple(x)
  # rubyでは、メソッドの戻り値を返すときに、returnキーワードは省略できる
  # return x * 3
   x * 3
end

puts triple(10)


# putsをメソッドに含めることが可能であるが、テストしにくい、再利用しにくいコードになるので避けたほうが良い
def sum(a, b)
  # この場合、返り値はputsの戻り値であるnilになる
  puts a + b
end
sum(5, 7)
# puts sum(5, 7) * 2 # nilになるのでエラーになる