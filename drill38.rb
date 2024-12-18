def binary_search(array, right, target)
  left = 0
  while left <= right
   center = (left + right) / 2
   if array[center] == target
    return center
   elsif array[center] < target
    left = center + 1
   else
    right = center -1 
   end
  end
  return -1
end

  array=[1,3,5,6,9,10,13,20,26,31]
  puts "検索したい数字を入力してください"
  target = gets.to_i
  number_of_elements = array.length

  result = binary_search(array, number_of_elements, target)
  
  if result == -1
    puts "#{target}は配列内に存在しません"
  else
    puts "#{target}は配列の#{result}番目に存在します"
  end

#target = 5　とする
#                   | left | right | center |array[center]|
#                   |  0   |   10  |   4    |      9      |  rightは配列の要素数　　centerの小数点は切り捨てになる
# right = center -1 |  0   |    3  |   1    |      3      |  3 < 5
# left = center + 1 |  2   |    3  |   2    |      5      |  5 = 5
#resultはcenterの値を戻り値とするのでelseの処理が行われる　=>　5は配列の2番目に存在します
