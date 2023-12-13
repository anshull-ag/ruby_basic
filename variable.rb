class MyClass
  @@class_variable = 'Class Variable'
  #puts @@class_variable

  def initialize(name)
    @name = name 
  end

  def self.class_method(instance)
    puts "class method are accessed #{@@class_variable}"
    puts "Instance #{instance.instance_variable_get(:@name)}"
  end

  def print_name 
    puts "Instance #{@name}"
    puts "instance method accessed #{@@class_variable}"
  end
   
  print_name
  
  self.class_method(self) #call class method with self keyword dont print instance value because self refered as a class inside class 
  # puts "....#{self}" #refer class 
  puts @@class_variable
end

obj = MyClass.new('Ruby method')
obj.print_name

MyClass.class_method(obj) #print instance value because we call instance as an argument 
# puts ".aaa#{self}"  # refer object called it main because instance of Object class 


class SubClass < MyClass
  def self.sub_class_method
    puts "the value of class variable accessed by child class easily #{@@class_variable}"
  end
  self.sub_class_method
end