def register_data(data)
  puts "車種を入力してください"
  car_model = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力してください"
  mileage1_per_litre = gets.to_f
  puts "乗車人数を入力してください"
  number_of_passengers = gets.to_i

  car = {car_model: car_model, mileage1_per_litre: mileage1_per_litre, number_of_passengers: number_of_passengers}
  data << car
end

def show_data_list(data)
  puts "見たい車の番号を入力してください"
  data.each_with_index do |car, index|
    puts "[#{index}]:#{car[:car_model]}"
    input = gets.to_i
    car =  data[input]
    if car
      show_data(car)
    else
       puts "該当する番号はありません。"
    end
  end
end

def show_data(car)
  puts "車種：#{car[:car_model]}"
  puts "1Lあたりの走行可能距離(km/l)：#{car[:mileage1_per_litre]}"
  puts "乗車人数：#{car[:number_of_passengers]}"
end


data = []
while true
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end
