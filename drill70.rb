def get_days(year, month)
  days = 0
  month_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if month == 2
    if year % 4 == 0                          #[閏年の条件１]４で割り切れる事
      if year % 100 == 0 && year % 400 != 0   #[閏年の条件２]4で割り切れるけど100で割り切れないこと　[閏年の条件３]４で割り切れて400でも割り切れること　条件に当てはまらなければ閏年ではないので日数は28になる
        days = 28
      else
        days = 29
      end
    else
      days = 28
    end
  else
    days = month_days[month - 1]     #指定したmonthが２じゃないならmonth_days配列から日数を選んでね。0から添え字は始まるからmonthに-1してね
  end
  
  return days
end

def get_week(year, month, day)
  weeks = ["月", "火", "水", "木", "金", "土", "日"]
  days = 0

  year_index = year - 1                   #指定した年のまでの経過年数が0になるまで毎年何日あるか計算する
  while year_index > 0 do                 #繰返：0年まで繰り返し毎年の日数を計算していく
    if get_days(year_index, 2) == 29      #条件：year_indexメソッドの2番目が29である(閏年である）
      days = days + 366
    else
      days = days + 365
    end
    year_index = year_index - 1
  end

  month_index = month -1      #daysに指定した月までの経過月数が0になるまで経過日数を加算する
  while month_index > 0 do
    month_days = get_days(year, month_index)
    days = days + month_days                   
    month_index = month_index -1
  end

  days = days + day              #daysに指定した月の指定した日までの経過日数を加算する
  return weeks[(days -1) % 7]    
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i
puts "日を入力してください："
day = gets.to_i

week = get_week(year, month, day)
puts "#{year}年#{month}月#{day}日は#{week}曜日です"