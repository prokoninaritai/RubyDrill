def bubble_sort(data)
  # 配列の数を数える処理を記述
  length = data.length

  # for文を2つ使用する
  for i in 0..length-1
    # 先頭から隣の数同士の大きさを比べる
    for j in 1..length-i-1
      # 先頭側の要素の方が小さい場合は、配列の位置を隣同士で交換する
      if data[j-1] < data[j]  
        data[j-1], data[j] = data[j], data[j-1]
      end
    end
  end
end

# 呼び出し例
number = [1,23,4,6,12,45,79]
bubble_sort(number)
puts number