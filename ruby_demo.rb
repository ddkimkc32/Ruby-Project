class Person
    @@num_of_people = 0
    def initialize(firstName, lastName, age)
      @@num_of_people += 1
      @firstName = firstName
      @lastName = lastName
      @age = age
    end
    # Custon methods for Person object are below
  
    # example of strign concatenation 
    def name
      puts @firstName + " " + @lastName 
    end
    # Example of string interpolation in Ruby
    def desc
      puts "Hello, my name is #{@firstName} #{@lastName}, and I am #{@age} years old"
    end
end
  
  # Creating a new object of class Person
  person1 = Person.new("Amanda", "Connor", 22)
  
  # Say we "print" (puts) the first and last name. There are two ways to do this: 
  
  # Not very intuitive way - uses Object method instance_variable_get() to get instance varaible values
  puts person1.instance_variable_get(:@firstName) + " " + person1.instance_variable_get(:@lastName)
  
  # Intuitive, but takes more work - create a custon function inside the class
  person1.name
  
  person1.desc
  