class Book
  def initialize
  end    
  '''def initialize(aTitle , aAuthor)
       @title=aTitle
       @author=aAuthor
  end'''
 def title=(aTitle)    # = can be used
       @title=aTitle
 end
 def author=(aAuthor)
       @author=aAuthor
 end

 def title
  return @title
  end                      
  def author
   return @author
  end
  ref=Book.new   
  ref.title="ruby"     # calls a method
  ref.author="ganesh"
  puts ref.title   # calling method
  puts ref.author
end
