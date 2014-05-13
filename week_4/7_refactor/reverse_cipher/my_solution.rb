# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a # making an array of each character in the alphabet
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # using the alphabet array to make a hash that has a value of the character rotated by 4
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # making an array identifying symbols that should be spaces
    
    original_sentence = sentence.downcase # downcasing the original_sentence
    encoded_sentence = [] # making an empty array for the enconded_sentence
    original_sentence.each_char do |element| # for each character in the original sentence, do something
      if cipher.include?(element) # if the cipher hash has the element, 
        encoded_sentence << cipher[element] # add the value of the cipher key to the encoded sentence
      elsif element == ' '
        encoded_sentence << spaces.sample # if the element is a space, put a sample of the space array
      else 
        encoded_sentence << element # else, put the element in
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing? turns things into an array
# 2. How does the rotate method work? What does it work on?  it takes the alphabet array and rotates it by 4 elements so the first element is the 4th element in the original array
# 3. What is `each_char` doing? it is working on each character of the original sentence
# 4. What does `sample` do? it takes a random sample element of the array
# 5. Are there any other methods you want to understand better? i pretty much understand the code.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? This looks much better.  I used .ord to rotate characters.
# 7. Is this good code? What makes it good? What makes it bad? i think this code is amaazing. its very easy to read and the
#         variables are clear. i cant think of anything bad about this.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?  No because the space elsif gives a random sample from the spaces array so it is different every time
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 

# This was a fun challenge because you get to see really good code for something that is similar to what we were trying to
# figure out.  This code gave me a "wow" feeling because it makes so much more sense.  I am the type of person that learns
# well by observing the answer first and figuring out how the answer was done and then doing it my own.  I know it is a lot
# better to first try it on your own, so I'm glad we got to do it first.  But looking at this code enlightens me to more
# possibilities of how to write code and makes me want to get better.  I loved this exercise.
