def near_ten(integer)
  if integer % 10 <= 2 || integer % 10 >= (10 - 2)
    puts "True"
  else
    puts "False"
  end
end

near_ten(12)
near_ten(17)
near_ten(19)
