def close_far(a,b,c)
  x = (a-b).abs
  y = (a-c).abs
  z = (b-c).abs

  if x == 1 && z >=2 
    puts "True"
  elsif y == 1 && z >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 10) 
close_far(1, 2, 3)
close_far(4, 1, 3)

#absメソッドは絶対値を取得する　ー５→５　