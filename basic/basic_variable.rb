price = 150
RATE = 1.1

puts price * 120 * RATE
puts price + 50 * RATE
puts price - 30 * RATE

RATE = 1.2 # 定数の最大乳できるが警告が出る


price += 1 # rubyでは、price++や、++price というJSではできる書き方はできない
puts price