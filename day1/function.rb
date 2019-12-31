def test1(n)
  [1,n].each do |x|
    puts x
end

def sayhello(msg="msg")
    puts "hello "+msg;
end

sayhello("world")

test1(20)

#no return but return
def myfun1(x,y)
    z=x+y
    puts z   # last argument is returned by default
end

puts myfun1 10,20


