# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
	attr_accessor :labels
  def initialize(labels)
  	raise ArgumentError.new("The number of objects in labels is not valid") if labels.length < 1
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

d1 = Die.new(["A", "B", "C"])

p 'returns the number of sides given on initialization'
p d1.sides == 3

p 'returns a roll that is included in labels'
p d1.labels.include? d1.roll

p 'returns every possible letter for a sufficiently large number of rolls'
  possible_values = (d1.labels).shuffle.first(15)
  output = Array.new(10000) { d1.roll }.uniq
p output.sort == possible_values.sort

# 5. Reflection 
# 
# This was also a very simple exercise.  I got the concepts right away.  I think I did the tests right too.
# I think I'm getting the hang of driver tests.  Can't be too sure though.  I don't think I'm confused with
# any of these concepts right now.
