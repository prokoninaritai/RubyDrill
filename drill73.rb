def bubble_sort(data)
  # 配列の数を数える処理を記述
  length = data.length

  # for文を2つ使用する
  for i in 0..(length-1)
    # 先頭から隣の数同士の大きさを比べる
    for j in 1..(length-i-1)
      # 先頭側の要素の方が大きい場合は、配列の位置を隣同士で交換する
      if data[j-1] > data[j]
         data[j-1],data[j] = data[j],data[j-1]
     end
    end
  end
end

# 呼び出し例
number = [1,23,4,6,12,45,79]
bubble_sort(number)
puts number

#                                                                          i    j       data 
#length = data.length                         length = 7                               
#for i in 0..(length-1)                       0 <= 6 T                     0
#　for j in 1.. (length-i-1)                  1 <= 6 T                           1  
#    if data[j-1] > data[j]                   data[0] > data[1]  1 > 23 F             [1,23,4,6,12,45,79]
#　for j in 1.. (length-i-1)                  2 <= 6                             2
#    if data[j-1] > data[j]                   data[1] > data[2]  23 > 4 T
#      data[j-1],data[j] = data[j],data[j-1]                                          [1,4,23,6,12,45,79]
#  for j in 1.. (length-i-1)                  3 <= 6                             3
#    if data[j-1] > data[j]                   data[2] > data[3]  23 > 6 T
#      data[j-1],data[j] = data[j],data[j-1]                                          [1,4,6,23,12,45,79]
# for j in 1.. (length-i-1)                   4 <= 6                             4
#    if data[j-1] > data[j]                   data[3] > data[4]  23 > 12 T
#      data[j-1],data[j] = data[j],data[j-1]                                          [1,4,6,12,23,45,79]

#for i in 0..(length-1)                       1 <= 6 T                     1
#　for j in 1.. (length-i-1)                  1 <= 5 T  

#親のfor1回目で右の一番大きい数字が決まるので、右から２番目に大きい数字を算出するまで再度入れ子のforを繰り返す。



