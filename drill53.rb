def get_days(year, month)
  month_days = [31,28,31,30,31,30,31,31,30,31,30,31]
  if month == 2
    if (year % 4 == 0) 
      if (year % 100 == 0) && (year % 400 != 0)
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month-1]
  end

  return days
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"

#うるう年の最低条件4で割り切れること。
#4で割れたとしても100で割り切れて400で割り切れないときは閏年ではない
#monthが2月の時だけ閏年の判断をする
