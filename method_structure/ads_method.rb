# 引数がないので、rubyでは()の省略可能
def show_ad
  puts "---------"
  puts "SALE! 50% OFF!"
  puts "---------"
end

def show_content
  puts "BREAKING NEWS!"
  puts "Two baby pandas born at our Zoo!"
end

# メソッドの呼び出しも引数がない場合は()を省略可能
show_ad
show_content
show_ad
