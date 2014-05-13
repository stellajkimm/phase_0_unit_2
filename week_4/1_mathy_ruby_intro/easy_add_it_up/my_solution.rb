# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

## total
#
# What is the input? an array
# What is the output? (i.e. What should the code return?) the sum of the numbers in the array
# What are the steps needed to solve the problem?
# define total method with the input as an array
# create a variable sum that is initially equal to 0
# for each item in array, add the item to the sum value
# return the sum

## sentence_maker
#
# What is the input? an array
# What is the output? (i.e. What should the code return?) a sentence using all the items in the array with the first word capitalized and ending with a period.
# What are the steps needed to solve the problem?
# define sentence_maker method with an input as an array
# create a variable called sentence and let it be equal to the joined array
# capitalize the sentence and add a "." to the end.

# 2. Initial Solution

def total(array)
	sum = 0
	array.each { |x| sum += x }
	return sum
end

#def sentence_maker(array)
#	array << "."
#	sentence = array.join(' ')
#	sentence.capitalize
#end


# 3. Refactored Solution

def sentence_maker(array)
	sentence = array.join(' ')
	return sentence.capitalize + "."
end


# 4. Reflection 
# 
# This exercise was fairly easy.  We have already made these methods before so I remembered
# how to do them and did not have much problem writing out my pseudocode or solution.
# It made me feel pretty confident in my beginner ruby skills.  It was fun actually using
# rspec to test my solutions.  I did not find this challenge tedious at all.  I think it is
# important to start small and work your way up.

