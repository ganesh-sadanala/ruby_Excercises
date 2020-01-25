class Office
  attr_reader :location,:ceo_name
  attr_writer :location,:ceo_name
end

office=Office.new
office.location="bangalore"
office.ceo_name="ayush_singh"
puts office.location
puts office.ceo_name

#practicing some methods

## to_r
a=2.3
 print("float value of #{a} is #{a.to_r}")

output: float value of 2.3 is (2589569785738035/1125899906842624)

 =begin
  fnanefrvbaiurbv #multiple line comments
 =end

  #Problem 1. Given a nested array of first names and last names, return a new array with the full names.

  names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pa
ttanaik"]]
names=names.map{|x| x[0]+" "+x[1]}
names.each{|x| puts x}

 #output

 Jhumpa Lahiri
 J. K Rowling
 Devdutt Pattanaik

 #Learning zip method to merge two arrays simulaneously

 #Problem 2. Given two arrays books and authors, merge them and print who wrote which book.

 books = ["Design as Art", "Anathem", "Shogun"]
 authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]
 bookInfo=books.zip(authors)
 bookInfo.each{|x| puts x[0]+" was written by "+x[1]}

#output

Design as Art was written by Bruno Munari
Anathem was written by Neal Stephenson
Shogun was written by James Clavell

#Problem 3. Print the given list of todos by category. (You haven't learned Hashes yet, so use only arrays.)

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]



#Problem 4. Given two arrays books and authors, merge them into a single Hash. The keys of the Hash must be the lower-cased firstname of the authors, and must be symbols.

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

#Merge two array using zip method

booksInfo=books.zip(authors)

#create an empty hash

library={}

#add to the hash

booksInfo.each{|x| library[x[1].split.first.downcase.to_sym]=x[0]}

puts library

#output

{:bruno=>"Design as Art", :neal=>"Anathem", :james=>"Shogun"}

#Problem 2. Given this list of todos, create a Hash keyed by category, whose value is an array containing all the todos in that category. The keys of the Hash must be a symbol.

todos = [
  ["Send invoice", "money"],
  ["Clean room", "organize"],
  ["Pay rent", "money"],
  ["Arrange books", "organize"],
  ["Pay taxes", "money"],
  ["Buy groceries", "food"]
]

#make empty array object as default value

todoHash=Hash.new{|h,k| h[k]=[]}

todos.each{|x| todoHash[x[1].to_sym].push(x[0])}

puts todoHash

#output

{:money=>["Send invoice", "Pay rent", "Pay taxes"], :organize=>["Clean room", "Arrange books"], :food=>["Buy groceries"]}
