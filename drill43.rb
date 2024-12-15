class Book
  attr_reader :title, :price

  def initialize(title,price)
    @title = title
    @price = price
  end
end

book = Book.new("ハリーポッター",2400)
puts book.title
puts "#{book.price}円"




#attr_readerはインスタンス変数を呼び出すメソッド。記述量をえらすために使われる
#例えばinisializeでインスタンス変数に入れた引き数title,priceを呼び出したいときに
#def title
#  @title
#end
#def price
#  @price
#end
#としていた記述をattr_reader :title, :priceとすることで省略出来る

#attr_accessor(エーティーティーアール アクセサー)
#記述したクラスに、ゲッターとセッターを定義してくれるメソッド
#与えられた引数をもとに属性を設定し、これを取得するメソッド（ゲッター）と更新するメソッド（セッター）を定義してくれる