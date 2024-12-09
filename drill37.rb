def lone_sum(ary)
 uniq_nums = []
  ary.each do |num|
    count = 0
    ary.each do |i|
      if num == i
        count += 1
      end
    end
    if count < 2
      uniq_nums << num
    end
  end
 sum = 0
 uniq_nums.each do |unique_num|
  sum += unique_num
 end
 puts sum
end

# 呼び出し例
lone_sum([1, 2, 3])
lone_sum([3, 2, 3])
lone_sum([3, 3, 3])