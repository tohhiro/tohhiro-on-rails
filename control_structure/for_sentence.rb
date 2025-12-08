for i in 1..3
  puts "Iteration #{i}"
end


for i in 1..9
  puts "Iteration #{i * 4}"
end


money = 100
for year in 1..30
  money *= 1.05
  next if money < 200
  break if money > 300
  puts "Year #{year}: I have #{money.round} yen."
end