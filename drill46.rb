
def oracle(num)
  subscript = num * rand(10) % 4
  result = ["凶","中吉","吉", "大吉"].shuffle
  puts "占い結果は#{result[subscript]}です！"
end


puts "誕生日を入力してください(例：4月3日なら403、11月15日なら1115と入力)"
birthday = gets.to_i
oracle(birthday)