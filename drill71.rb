def register_item(registered_item)
  # 商品名・販売価格・仕入れ値の入力を促し、入力された値をハッシュオブジェクトで管理する
  item = {}
  puts "商品名を入力してください："
  item[:name] = gets.chomp
  puts "販売価格を入力してください："
  item[:selling_price] = gets.to_i
  puts "仕入れ値を入力してください："
  item[:purchase_price] = gets.to_i 

  line = "---------------------------"

  # 入力された値（ハッシュオブジェクトで管理している値）を表示する
  puts "商品名 : #{item[:name]}\n#{line}"
  puts "販売価格 : #{item[:selling_price]}円\n#{line}"
  puts "仕入れ値 : #{item[:purchase_price]}円\n#{line}"

  registered_item << item
end

def check_items(registered_item)
  # 保存された全ての商品情報（商品名・販売価格・仕入れ値）を商品ごとに一覧表示する
  line = "---------------------------"
  puts "【商品一覧】\n#{line}"

  registered_item.each do |item|
    puts "商品名：#{item[:name]}"
    puts "販売価格：#{item[:selling_price]}:円"
    puts "仕入れ値：#{item[:purchase_price]}円\n#{line}"
  end
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

item_list = []         # 配列オブジェクトitem_listの生成

while true do
  # メニューの表示
  puts "商品数: #{item_list.length}"
  puts "[1]商品を登録する"
  unless item_list.empty?
    puts "[2]商品の一覧を確認する"
  end
  puts "[3]アプリを終了する"

  input = gets.to_i

  if input == 1 then
    item_list = register_item(item_list)  # register_itemメソッドの呼び出し
  elsif input == 2 then
    check_items(item_list)     # check_itemsメソッドの呼び出し
  elsif input == 3 then
    end_program     # end_programメソッドの呼び出し
  else
    exception       # exceptionメソッドの呼び出し
  end
end