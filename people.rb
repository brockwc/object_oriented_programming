class Person
  
  def initialize(name)
    @name = name
  end

  def to_s
    puts "Hi, my name is #{@name}."
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end 

end

class Instructor < Person
  
  def teach
    puts "Everything in Ruby is an object."
  end
end

chris = Instructor.new("Chris")
puts chris
puts chris.teach

christina = Student.new("Christina")
puts christina
puts christina.learn

#     When the teach method is called on the student instance we get an "undefined method" 
# error. This error occurs because the teach method is only available to objects that belong 
# to the Instructor. If we had called learn on an object in the Instructor class we would 
# see the same error for the same reasons.
