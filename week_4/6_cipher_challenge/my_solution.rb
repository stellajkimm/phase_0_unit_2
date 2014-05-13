# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d",   # there is definitely an easier way to do this.  maybe doing a loop of the alphabet to 
#             "i" => "e",   # assign the value of the hash.  or instead of having a hash in general, make an iteration
#             "j" => "f",   # to switch the character.
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? it is ciphering for each character in the input (every element in the array)
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#                          # it starts with false because if there was no match, the method would add the x to the decoded sentence in the end.
#                          # this just gives the method an option if there was no match.  if it were true, the code wouldnt do anything
#                          # to the unmatched character
#     cipher.each_key do |y| # What is #each_key doing here? it is taking each key and comparing it with the input character x
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#                  # x is the character in consideration from input, y is each key in cipher. it is seeing if the x character
#                  # has a cipher match.
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? this breaks the cipher.each_key do loop to move on to the next x in the input.each do |x| loop
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? if x is a symbol, add a spaace
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?  it makes an array of numbers 0 through 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? if there was no match for x in the loop above
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. # any positive integer
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... 
#   end  
#   return decoded_sentence # What is this returning?  the decoded sentence.
# end

# Your Refactored Solution


def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []

  input.each do |x| # What is #each doing here? it is ciphering for each character in the input (every element in the array)
    if x.ord >= 97 && x.ord <= 100
      x.replace((x.ord + 22).chr)
    elsif x.ord >= 101 && x.ord <= 122
      x.replace((x.ord - 4).chr)
    elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
      x.replace(" ")
    end
  end
  
  decoded_sentence = input.join("")

  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. # any positive integer
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... 
  end  
  return decoded_sentence # What is this returning?  the decoded sentence.
end


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
#
# Not really sure what it means by clean up variable names.  I think they look fine(?) but I could be wrong?.
# Instead of having a hardcoded hash, I changed it so that it looks up x's ord number and replaces it with a character
# with a different ord number.  I am quite sure I can refractor this again or do it in a more eloquent way
# but this is just how I thought of it.  I couldn't think of a better way to go to shift characters.  Either way,
# the code works.  Ultimately just used ruby-doc.org to help me out with methods I can use.  This challenge was pretty
# fun and it's important to know that there is always probably a better way to write something with less coding.
#
# I didn't work with anyone on this challenge because I am a little behind (Dev Bootcamp should know this because I told you
# # guys I am going out of the country for 2 wks) and actually no one in my accountability group contacted me anyway.
