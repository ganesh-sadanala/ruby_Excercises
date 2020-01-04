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


