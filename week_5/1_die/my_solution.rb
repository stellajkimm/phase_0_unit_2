# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: sides
# Output: number of sides or random roll
# Steps:
# define class Die
# define method initialize taking 1 parameter "sides"
# define instance variable named sides that is equal to sides
# if sides is less than 1, raise an ArgumentError
# define method sides
# return instance variable sides
# define roll
# return a sample of an array of numbers from 1 to number of sides


# 3. Initial Solution

class Die
  def initialize(sides)
  	@sides = sides
  	raise ArgumentError.new("The number of sides entered is not valid") if @sides < 1
  end
  
  def sides
  	@sides
  end
  
  def roll
    (1..@sides).to_a.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# 
d1 = Die.new(7)

p 'sides returns the number of sides given on initialization' 
p d1.sides == 7

p 'roll returns a random number between 1 and the number of sides'
p d1.roll >= 1 && d1.roll <= 7

p 'initialize expects a single argument'
p d1.instance_method(:initialize).arity == 1







# 5. Reflection 

# If I did this correctly, I think this was an easy task.  I am still unsure of drivers test.  I need to
# pair with someone about this.  Or read some more info on it.  This was good practice on creating a
# simple class.  I'm not quite sure if I did the argument error right but I think I did.

