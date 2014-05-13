# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: answer
# Output: 
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	if guess > @answer
  		@solved = false
  		:high
  	elsif guess < @answer
  		@solved = false
  		:low
  	elsif guess == @answer
  		@solved = true
  		:correct
  	end
  end

  def solved?
  	@solved
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
g = GuessingGame.new(8)

p "solved? returns false before a guess is made"
p g.solved? == false

p "guess returns :high when the guess is too high"
p g.guess(10) == :high

p "guess returns :low when the guess is too low"
p g.guess(2) == :low

p "guess returns :correct when the guess is correct"
p g.guess(8) == :correct



# 5. Reflection 
# 
# Okay now I think I really understand the driver tests now.  I didn't realize that I had to take the tests from
# the specs.  Anyway I think this challenge was fun.  I think the only thing that might be repetitive about my code
# is that I put @solved = false many times and I don't know if I actually have to do that.  I learned more about
# writing classes but I don't have the concept of symbols down yet.  I think I need to understand instance variables a little
# more too now.
