class Book
 def set_title(aTitle)
       @title=aTitle
 end
 def set_author(aAuthor)
       @author=aAuthor
 end

  def get_title
   return @title
  end
  def get_author
   return @author
  end
end
ref=Book.new
  ref.set_title("ruby")
  ref.set_author("ganesh")
  puts ref.get_title
  puts ref.get_author
