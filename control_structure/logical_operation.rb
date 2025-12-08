print "English? "
english = gets.to_i
print "Math? "
math = gets.to_i

if english >= 60 && english <= 100 || math >= 60 && math <= 100
  puts "Pass"
else
  puts "Fail"
end