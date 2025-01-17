class Food
  @@foods = []        #@@はクラス変数。@@foodsは空の配列を持っている

  def self.input       #self.がついているとクラスメソッド
    puts "料理名を入力してください"
    name = gets.chomp
    puts "カロリーを入力してください"
    calory = gets.to_i

    food = Food.new(name, calory)     #入力情報を引き数にしてインスタンスを生成している（initializeメソッドを呼び出している）
    @@foods << food                   
  end

  def self.show_all_calory        #カロリーを表示するクラスメソッド
    all_calory = 0                #初期値は0
    line = "---------------------------"     #表示が見やすいように変数lineに線を格納
    puts line

    @@foods.each do |food|        #入力した料理名とカロリーが入った配列から1つ1つ要素をfoodに格納し、料理名とカロリーを表示する
      puts "#{food.name} :#{food.calory}kcal"
      all_calory = all_calory + food.calory       #@@foodsに格納された配列空1つ1つcaloryを取り出すたびにcaloryを足して、変数all_caloryに代入することで、合計を計算している
    end

    puts line
    puts "カロリー合計 :#{all_calory}kcal"
  end

  def initialize(name, calory)        #入力した値が他のインスタンスでも使えるようにインスタンス変数に格納する
    @name = name
    @calory = calory
  end

  def name
    return @name        #nameメソッドを呼び出したら入力した料理名が返り値となるメソッド
  end

  def calory
    return @calory
  end
end
  
while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
     Food.input   # クラスメソッドの呼び出し
  elsif input == 1
    Food.show_all_calory
    exit
  end
end