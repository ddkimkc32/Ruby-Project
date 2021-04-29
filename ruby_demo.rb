# Custom object class to create new Person objects
class Person
  @@num_of_people = 0
  def initialize(firstName, lastName, age)
    @@num_of_people += 1
    @firstName = firstName
    @lastName = lastName
    @age = age
  end
  #-- PERSON METHODS --#
  # example of string concatenation 
  def name
    puts @firstName + " " + @lastName 
  end
  # Example of string interpolation in Ruby
  def desc
    puts "Hello, my name is #{@firstName} #{@lastName}, and I am #{@age} years old \n\n"
  end
  # Showing Class variables - Class variables are accessible amongs all objects of the same class
  def people
    puts "The total number of people: #{@@num_of_people}"
  end
end

# Creating a new object of class Person
person1 = Person.new("Tom", "Holland", 24)

=begin (multi-line comments in ruby)
  Say we want to display the first and last name of a Person object
  There are two ways to do this
=end

# 1. Not very intuitive way - uses Object method instance_variable_get() to get instance varaible values
puts person1.instance_variable_get(:@firstName) + " " + person1.instance_variable_get(:@lastName)

# 2. Intuitive, but takes more work - create a custon function inside the class
person1.name

person1.desc    # Displaying string interpolation from the desc method
person1.people  # Displaying the use of a class variable

# Creating a new Person object
person2 = Person.new("Elizabeth", "Olsen", 32)

# The class variable @@num_of_people has been updated with the creation of a new Person object
person2.people