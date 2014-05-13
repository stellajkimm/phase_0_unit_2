# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

def create_word(board, *coords)
	coords.map { |coord| board[coord.first][coord.last]}.join("")
end

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? rad

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code" #=> returns "code"  
p create_word(boggle_board, [0,1], [0,2], [1,2])  == "rad" #=> creates what california slang word? rad

# Reflection 
# 
# Not really sure what we had to do with this first part?  The instructions gave the answers?  I don't get it.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define method get_row with two parameters, board and row
# return calling row in array board

# Initial Solution

def get_row(board, row)
	board[row]
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 
# This should be an extremely easy method but the instructions doesn't let you have to parameters.
# I put two parameters anyway because I don't really see how it can work without two parameters.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution

# def get_col(board, col)
# 	board.each { |x| puts x[col] }
# end

# Refactored Solution

def get_col(board, col)
	column = []
	board.each { |x| column << x[col] }
	column
end

# DRIVER TESTS GO BELOW THIS LINE

p get_col(boggle_board, 1) == ["r", "o", "c", "a"]

# Reflection 
#
# Not sure if this is the best answer but it works.  I didn't realize that the instructions wanted
# the answer to be an array so I had to "refractor" it.  Otherwise, this challenge was pretty easy as well.
# Oh yeah, and also that there are two parameters instead of the one that the instructions showed.
# I have to figure out if this was a mistake or not.