def near_ten(integer)
  quotie = integer % 10
  if quotie <= 2 || quotie >= 8
    puts "True"
  else
    puts "False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)

#integer % 10はquotient(商)に格納する