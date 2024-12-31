def register_data(data)
  puts '名前を入力してください'
  name = gets.chomp
  puts 'パンチ力を入力してください(0 ~ 100)'
  punch = power(gets.to_i)
  puts 'キック力を入力してください(0 ~ 100)'
  kick = power(gets.to_i)
  puts 'ジャンプ力を入力してください(0 ~ 100)'
  jump = power(gets.to_i)

  character = {name: name, punch: punch, kick: kick, jump: jump}
  data << character
end

def power(power)
  while power > 100
    puts "100以下の数字を入力してください。"
      power = gets.to_i
  end
  return power
end

def show_data_list(data)
  puts '見たい人の番号を選択してください'
  data.each_with_index do |character, index|
    puts "#{index+1}:#{character[:name]}"
  end
  input = gets.to_i - 1
  character = data[input]
  puts "名前：#{character[:name]}"
  puts "パンチ力：#{character[:punch]}"
  puts "キック力：#{character[:kich]}"
  puts "ジャンプ力：#{character[:jump]}"
end

data = []
while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(data)
  elsif input == 1
    show_data_list(data)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end

#powerメソッドを作成し、100以上の入力をした場合は再度入力するようにwhileを使用する
#each_with_indexを使うと[1]の部分とnameの部分とどちらも格納、繰り返し表示が出来る
#配列の添え字やindex等の要素は0から始まるので、注意。