class Dog
    @@type = "犬"

  def initialize
    @name = "マロン"
    @dog_type = "トイプードル"
  end

  def self.say
    puts "ワンワン"
  end

  def say_type
    puts "わたしは#{@@type}です"
  end

  def self_introduction
    puts "わたしの名前は#{@name}で種類は#{@dog_type}です"
  end

end

dog = Dog.new
Dog.say
dog.say_type
dog.self_introduction

#クラス変数は＠＠ クラスの最初に定義する
#インスタンス変数は＠　インスタンス生成時にインスタンス変数を定義したいので、initializeメソッドで定義する
#クラスメソッドはself.をつける
#インスタンスメソッドではクラス変数もインスタンス変数も使える
#クラスメソッドの呼び出し
　#クラス名.メソッド名
#インスタンス生成
　#インスタンス名（変数名）＝クラス名.new
#インスタンスメソッドの呼び出し
　#インスタンス名.メソッド名