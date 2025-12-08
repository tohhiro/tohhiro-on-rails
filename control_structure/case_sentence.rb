print "Score? :"
score = gets.to_i

case score
when 91..100
  puts "A"
when 76..90
  puts "B"
when 61..75
  puts "C"
else
  puts "D"
end