
ruby filename.rb -> to run the ruby file
irb -> command line tool for ruby interpreter(interactive ruby)
13.even?  //() not used for fns, ? used
output:
  false
! and = can also be used at the end of function name.

puts "Hello!" # appends new line by default
Math.sqrt 64  #parenthesis is not mandatory for function attr in ruby
#gets fun.
    a=gets  
    #input  ->  Hello ruby
    #output ->  Hello ruby\n 
    a=gets.chomp  or gets.strip  # used for removing new lines at the end
    a=gets.chomp.to_i # typecats to an integer
#Data Types
    Hashes
    nil
    Symbols -> used as method attr and hash keys.
#String
    '' or " " can be used for strings
    a=10
    "My age id #{a}" # to retrive the value of a
#Symbols    
    a symbol is preceded by a :
    used in hash data structues
#hash
    a={"raj"=>"CSE","ram"=>"ECE"}
    puts a["raj"]
###############################################
if
  ..
end
if 
  ...
else 
  ..
end
if
  ..
 elsif 
  ..
  else
   ..
  end

#Modified if
a=100
puts "ruby" if a>90  #single line usage of if

#for loop
a=gets.chomp.to_i
for in l..a do # l is inclusive and a is exclusive
    puts i
end


