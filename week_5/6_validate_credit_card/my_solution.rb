# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: credit card number
# Output: true or false
# Steps:
# define class credit card
# define method called initialize that takes in 1 parameter num (credit card number)
# raise an argument error if num's length does not equal 16
# define instance variable @card_num and set it equal to the num
# define method double_array
# make an instance variable num_array that makes an array with every digit being one element (intgeer)
# make another array @double_even_array that takes every element that has an even index (including 0) and doubling it
# define method sum_digits
# define variable @double_sum and set it equal to the sum of every digit in double_even_array by
# joining every element in double_Even_array, splitting it up, and turning them back into integers, and then summing it all
# make an array @odd_array for all the elements in num_array that have an odd index number
# make a variable @untouched_sum that sums all the numbers in @odd_array
# make a variable @total_sum that is the sum of @untouched_sum and @double_sum
# define a method mult_ten that says true or false if the @total_sum % 10 is equal to 0
# define a method check_card that runs methods double_array, sum_digits, and mult_ten


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
	def initialize(num)
		raise ArgumentError.new("The number of digits in credit card is not valid") if num.to_s.length != 16
		@card_num = num
	end

	def check_card
		double_array
		sum_digits
		mult_ten
	end


	def double_array
		@num_array = @card_num.to_s.scan(/./).map { |x| x.to_i }

		i = 0		
		@double_even_array = []
		while i < 16
			@double_even_array << @num_array[i]*2
			i += 2
		end
	end

	def sum_digits
		@double_sum = @double_even_array.join("").scan(/./).map { |x| x.to_i }.inject(:+)

		i = 1
		@odd_array = []
		while i < 16
			@odd_array << @num_array[i]
			i += 2
		end

		@untouched_sum = @odd_array.inject(:+)
		@total_sum = @double_sum + @untouched_sum
	end

	def mult_ten
		@total_sum % 10 == 0
	end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

p 'check_card expects no arguments to be passed'
p CreditCard.instance_method(:check_card).arity == 0

    
p 'returns true for a valid card' 
p CreditCard.new(4408041234567893).check_card == true
      
p 'returns false for a bad card'
p CreditCard.new(4408041234567892).check_card == false
     
# 5. Reflection 
# 
# This was a fun exercise.  I don't think it was too difficult.  I think there might be a better way to take the
# even/odd indexes from arrays but I can't figure it out right now.  I'm not sure why there should be so many
# methods.  It is basically doing one method so why should they be separate?
