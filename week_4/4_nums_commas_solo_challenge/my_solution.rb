# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? an integer without commas
# What is the output? (i.e. What should the code return?) the integer with commas
# What are the steps needed to solve the problem?
# define a method called separate_comma with a parameter num
# turn the num to a string
# determine the amount of digits in the integer (amount of characters in the string)
# if amount of digits is 3 or less, return num
# else if the number of digits is divisible evenly by 3, scan num_s and join it with a ","
# else return the first remainder digits (form using module) of num_s, plus a ","
# plus the rest of the num_s that is scanned and joined by ","


# 2. Initial Solution

def separate_comma(num)
	num_s = num.to_s
	digits = num_s.length
	if digits <= 3
		num_s
	elsif digits % 3 == 0
		num_s.scan(/.../).join(",")
	else
		i = digits % 3
		num_s[0..i-1] + "," + num_s[i..-1].scan(/.../).join(",")
	end
end


# 3. Refactored Solution



# 4. Reflection 

# I am still having problems writing out the psuedocode before I write my solution.  I always
# have trouble thinking of how I am going to do it until I code it.  The reason why is,
# I am not sure how to exactly to get the solution if I don't know all of the methods I can use
# to create a solution.  I have to work my way through trial and error.  I know psuedocode is really important
# because if I cant think of the solution in english, how will I be able to code it?
# But I guess this will come with practice by training my mind to think of ideas of how to
# solve it without having to code it first.  I learned the new method "scan" by using ruby-doc.org
# in the string section.  I already knew join, so after thinking of that, I figured it out.