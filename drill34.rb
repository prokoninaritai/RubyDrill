def array_count9(nums)
  count = nums.count(9)
  puts "配列の中には9が#{count}個です"
end

array_count9([1, 2, 9])
array_count9([1, 9, 9])
array_count9([1, 9, 9, 3, 9])

#countメソッドを使う引数に指定した数字に一致するものの個数を数えて、結果を返してくれる