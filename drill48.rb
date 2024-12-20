class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です。#{@age}歳です"
  end
end

student = Student.new("タロウ", 29)
student.introduce

#クラスの継承
#class クラス名　＜　親クラス
#共通する部分（名前と年齢）を受け継ぐことが出来る
