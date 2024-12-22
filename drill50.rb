while true do
puts "[0]:カロリーを表示する"
puts "[1]:終了する"
input = gets.to_i
  
  if input == 0
    puts "500kcal"
  elsif input == 1
    exit
  end
end

#条件分岐がtrueの結果を出す限り、do以下の処理を続ける
#exitをするとループから抜けられる