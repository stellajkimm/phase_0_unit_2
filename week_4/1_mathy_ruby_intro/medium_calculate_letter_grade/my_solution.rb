# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? an array
# What is the output? (i.e. What should the code return?) a string "A" "B" "C" "D" "E" or "F"
# What are the steps needed to solve the problem?
# define method called get_grade with an array as an input
# create a variable called sum and make it equal to 0
# for each item in the array, add item to sum
# create a variable called average and make it equal to the sum divided by the length of the array
# if average is more than or equal to 90, return "A"
# else if average is more than or equal to 80, return "B"
# else if average is more than or equal to 70, return "C"
# else if average is more than or equal to 60, return "D"
# else if average is more than or equal to 50, return "E"
# else return "F"


# 2. Initial Solution

def get_grade(array)
	sum = 0
	array.each { |x| sum += x }
	average = sum / array.length
	if average >= 90
		"A"
	elsif average >= 80
		"B"
	elsif average >= 70
		"C"
	elsif average >= 60
		"D"
	else "F"
	end
end


# 3. Refactored Solution



# 4. Reflection 

# This challenge was also fairly easy because I had written this method before.  I did not have
# a problem psuedocoding or coding this method.  I think it is important to redo these over and over
# again because it is engraved in my head.  I enjoyed coding this because it gave me more confidence as 
# a coder.