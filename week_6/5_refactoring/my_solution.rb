# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself].


# Original Solution

# class CreditCard
# 	def initialize(num)
# 		raise ArgumentError.new("The number of digits in credit card is not valid") if num.to_s.length != 16
# 		@card_num = num
# 	end

# 	def check_card
# 		double_array
# 		sum_digits
# 		mult_ten
# 	end


# 	def double_array
# 		@num_array = @card_num.to_s.scan(/./).map { |x| x.to_i }

# 		i = 0		
# 		@double_even_array = []
# 		while i < 16
# 			@double_even_array << @num_array[i]*2
# 			i += 2
# 		end
# 	end

# 	def sum_digits
# 		@double_sum = @double_even_array.join("").scan(/./).map { |x| x.to_i }.inject(:+)

# 		i = 1
# 		@odd_array = []
# 		while i < 16
# 			@odd_array << @num_array[i]
# 			i += 2
# 		end

# 		@untouched_sum = @odd_array.inject(:+)
# 		@total_sum = @double_sum + @untouched_sum
# 	end

# 	def mult_ten
# 		@total_sum % 10 == 0
# 	end
# 	

# Refactored Solution

class CreditCard
	def initialize(num)
		raise ArgumentError.new("The number of digits in credit card is not valid") if num.to_s.length != 16
		@card_num = num
	end

	def check_card
		digits
		even_index_array
		odd_index_array
		sum_digits
		mult_ten
	end

	def digits  # made separate method to make an array of each digit
		@digits = @card_num.to_s.split(//).map { |x| x.to_i } # changed scan to split
	end

	def even_index_array # made separate method for the digits with even index
		i = 0		
		@even_array = []
		while i < 16
			@even_array << @digits[i]*2
			i += 2
		end

		@even_array_sum = @even_array.join("").scan(/./).map { |x| x.to_i }.inject(:+)
	end

	def odd_index_array # made separate method for the digits with odd index
		i = 1
		@odd_array = []
		while i < 16
			@odd_array << @digits[i]
			i += 2
		end

		@odd_array_sum = @odd_array.inject(:+)
	end

	def sum_digits
		@total_sum = @even_array_sum + @odd_array_sum
	end

	def mult_ten
		@total_sum % 10 == 0
	end
end




# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

card1 = CreditCard.new(8021038947182721)
assert { card1.check_card == false }

card2 = CreditCard.new(4408041234567893)
assert { card2.check_card == true }

card3 = CreditCard.new(4408041234567892)
assert { card3.check_card == false }




# Reflection 

# I refactored my own solution to the Valid Credit Card challenge. I'm not sure if I can make this 
# any better than it actually is but I think I changed the variable names and methods in a way that
# is more easily understandable of how the credit card number is checked.  Otherwise the functions
# and code is pretty much the same.