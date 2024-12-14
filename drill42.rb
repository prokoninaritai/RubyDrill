def multiplication(num1,num2)
  puts "#{num1}と#{num2}をかけた答えは#{num1*num2}です"
end

puts "入力した数字２つを掛け算するプログラムです"
puts "最初の数字を入力してください"
num1 = gets.to_i
puts "２番目の数字を入力してください"
num2 = gets.to_i

multiplication(num1,num2)

