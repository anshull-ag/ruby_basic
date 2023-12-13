# methods in ruby define with def keyword 

# in two types method argument type AND without argument 
def greetings
  puts "hello ruby"
end

greetings
# in without argument type we give argument this will arise error argument error 

def calculate_area(a)
  puts "area of square with given side #{a} is #{a*a}"
end

calculate_area(5)

# method with default argument 

def rectangle_area(length = 10, breadth = 5)
  puts "area of rectangle with given length #{length} and breadth #{breadth} is #{length*breadth}"
end

rectangle_area #calling without argument takes default parameter 

rectangle_area(2,5) #calling with argument 


