weeks = ["日", "月", "火", "水", "木", "金", "土"]
now = Time.new

puts "現在は西暦#{now.year}年#{now.month}月#{now.day}日"
puts "#{weeks[now.wday]}曜日です"

#Timeクラスを使うと現在時刻を取得出来る
#now = Time.new
puts Time.new  #2025-01-08 21:46:16 +0900
puts now.year  #2025（年）
puts now.month #1（月）
puts now.day   #8（日）
puts now.hour  #21（時）
puts now.min   #46（分）
puts now.sec   #16（秒）
puts now.wday  #3 (水曜日のこと 0は日曜日)
puts now.zone  #JST（日本時間）