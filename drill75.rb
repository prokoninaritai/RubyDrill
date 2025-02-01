def check_index(text, search_string)
 index = text.index(search_string)

  if index
    puts "#{text}の#{search_string}の位置は、#{index}番目です"
  else
    puts "#{text}に#{search_string}はありません"
  end
end

# 呼び出し例
check_index("hello","e")
check_index("hello","h") 
check_index("world","e")
check_index("apple","p")