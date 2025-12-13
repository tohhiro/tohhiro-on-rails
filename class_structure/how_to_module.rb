module CurrencyHelpers
  # 定数は大文字のスネークケースで命名するのが慣例
  JPY_TO_US = 0.0068
  USD_TO_JPY = 146.78

  # これらのメソッドはモジュールの外から呼び出すことを想定しているため、selfをつけてクラスメソッドとして定義する
  def self.jpy_to_usd(jpy)
    jpy * JPY_TO_US
  end

  def self.usd_to_jpy(usd)
    usd * USD_TO_JPY
  end

end


puts "100,000円をドルに換算すると？"
puts "#{CurrencyHelpers.jpy_to_usd(100_000)}ドル"
puts "100,000ドルを円に換算すると？"
puts "#{CurrencyHelpers.usd_to_jpy(100_000)}円"

# moduleの外でmoduleの定数を使いたい場合は、モジュール名::定数名でアクセスする
puts "1円はいくら？ #{CurrencyHelpers::JPY_TO_US}ドル"
puts "1ドルはいくら？ #{CurrencyHelpers::USD_TO_JPY}円"