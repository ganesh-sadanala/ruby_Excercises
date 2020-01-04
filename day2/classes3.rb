class Book
  attr_reader :title, :author, :price  #creates attr with names title and author ...
  attr_writer :title, :author, :price 
  
  def is_price_high?
      if @price>1000
         return true
      else
         return false
      end 
  end
end

  book=Book.new
  book.title=("ruby")
  book.author="ganesh"
  book.price=2000

  puts book.title
  puts book.author
  puts book.is_price_high? 
  
