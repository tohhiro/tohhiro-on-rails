print "Score?: "
score = gets.to_i
result = score >= 60 && score <= 100 ? "Pass" : "Fail"
puts result