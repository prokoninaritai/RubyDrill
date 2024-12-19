def movie_info(movie, input)
 puts movie[input]
end

movie = {"title"=>"ハリーポッター", "genre"=>"ファンタジー", "year"=>"2001年"}
puts "以下から1つを選んで入力してください。
  ・title
  ・genre
  ・year"
input = gets.chomp

movie_info(movie, input)


