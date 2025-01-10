def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  # ターミナルからじゃんけんの手を入力
  player_hand = 

  # 乱数でプログラム側の手を決定
  program_hand = 

  jankens = ["グー", "チョキ", "パー"]

  puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

  # あいこの判定はplayer_handとprogram_handの値が等しいとき
  if 
    puts "あいこで"
    # 返り値を返す

 # じゃんけんに勝つパターンを全て並べる
  elsif
    puts "あなたの勝ちです"
   # 返り値を返す

  else
    puts "あなたの負けです"
    # 返り値を返す

  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
# jankenメソッドの返り値をnext_gameに代入
end