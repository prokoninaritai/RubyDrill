class Book
  def initialize(title,price)
    @title = title
    @price = price
  end
  
  def title
    @title
  end
  
  def price
    @price
  end

end

book = Book.new("ハリーポッター",2400)
puts book.title
puts "#{book.price}円"


#attr_readerを使わない場合