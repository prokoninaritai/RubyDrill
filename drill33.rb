def left2(str)
  first_str = str[0]
  second_str = str[1]
  len = str.length
  arr = []
  (2..len).each do |num|
    arr << str[num]
  end
  puts "#{arr.join}#{first_str}#{second_str}"
end

# 呼び出し例
left2("Hello") 
left2("java")
left2("Hi")

#文字列の順番を変える
#１文字目をfirst_strに格納する
#２文字目をsecond_strに格納する
#文字数をカウントする
#空の配列をarrに格納する
#３文字目から最後までの文字を一つ一つnumに格納する
#格納した文字を一つ一つ空の配列arrに追加していく
#joinで格納された配列の文字列をくっつける１文字目と２文字目を表示する
#=>lloHe