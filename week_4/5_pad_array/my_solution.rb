# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? min size and optional pad value
# What is the output? (i.e. What should the code return?) the array with the correct number of elements
# What are the steps needed to solve the problem?
# define class Array
# define a method pad that takes in two parameters: min pad size, and pad value defaulting to nil
# define a new variable new_array that is equal to the array (self)
# determine the max of the difference between (the pad min size and array length) and zero and
# push the val to the new_array that many times
# define a method pad! that takes in two parameters: min pad size and pad value defaulting to nil
# determine the max of the difference between (the pad min size and array length) and zero and
# push the val to the array (self) that many times.


# 2. Initial Solution

# class Array
# 	def pad(min_size, val = nil)
# 		new_array = self
# 		extra = [min_size - self.length, 0].max
# 		extra.times { new_array << val }
# 		new_array
# 	end

# 	def pad!(min_size, val = nil)
# 		extra = [min_size - self.length, 0].max
# 		extra.times { self << val }
# 		self
# 	end
# end

# 3. Refactored Solution

class Array
	def pad(min_size, val = nil)
		new_array = self
		[min_size - self.length, 0].max.times { new_array << val }
		new_array
	end

	def pad!(min_size, val = nil)
		[min_size - self.length, 0].max.times { self << val }
		self
	end
end


# 4. Reflection 

# This solution is still in the works.  It is failing two tests (Array#pad operates non-destructively)
# and (Array#pad pads elements to the end of an array).  I really don't understand why this doesnt work.
# The pad is basically the same method as pad! except it works off a new variable called new_array
# instead of itself and returns the new_array.  This shouldn't change the array it self at all.  It
# also has the same exact code for producing the solution.  I need to check up on this.