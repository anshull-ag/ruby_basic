class GetterSetter
  def initialize(name, designation, company)
    @name = name
    @designation = designation
    @company = company
  end

  def print
    puts "name=#{@name} designation=#{@designation} company=#{@company}"
  end

  def name #getter method 
    puts @name
  end

  def name=(new_name) #setter method 
    @name = new_name
  end
end

obj = GetterSetter.new('Anshul', 'Software Developer', 'Bestpeers')
obj.print
obj.name
obj.name = 'Mohit'
obj.print