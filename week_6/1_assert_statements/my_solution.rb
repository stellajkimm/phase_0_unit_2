# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Christian Moon].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# The first assert method yields true since 'bettysue' is equal to name.
# Therefore not raising 'Assertion failed!'.
# The second assert method does not yield since "billybob" doesn't equal name.
# Therefore, raising 'Assertion failed!'.

# 3. Copy your selected challenge here

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

# 1. DRIVER TESTS GO BELOW THIS LINE

  
p 'returns false for a bad card' 
p CreditCard.new(8021038947182721).check_card == false
    
p 'returns true for a valid card' 
p CreditCard.new(4408041234567893).check_card == true
      
p 'returns false for a bad card'
p CreditCard.new(4408041234567892).check_card == false


# 4. Convert your driver test code from that challenge into Assert Statements

card = CreditCard.new(8021038947182721)
assert { card.check_card == false }

card2 = CreditCard.new(4408041234567893)
assert { card2.check_card == true }

card3 = CreditCard.new(4408041234567892)
assert { card3.check_card == false }




# 5. Reflection

# I was confused at first how to do this.  I thought that the assert had to post different sentences
# instead of the same one in the method.  Also, Christian and I were working really hard to try and make 
# a test to see if the ArgumentError posts but after a long period of time, we couldn't figure it out
# so we just made another test to see if check_card works properly.  This is something that I want to
# ask someone.  