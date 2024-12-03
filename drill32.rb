class Student
  def set_name(name)
    @name = name
  end

  def introduce
    puts "私の名前は#{@name}です。"
  end
end

student = Student.new
student.set_name("山田太郎")
student.introduce

#selfをつけることでintroduceがクラスメソッドになってしまっていた
#クラスメソッドの中でインスタンス変数は使えない
#クラスメソッドはインスタンスstudentから呼び出すことはできない
#selfを消し、introduceをインスタンスメソッドとすることで、エラーが解消された。