# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Katie Reiner






# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  if my_list.include? fav_food
    if num_of_people % my_list[fav_food] == 0 
        num_of_food = num_of_people / fav_food
        return "You need to make #{num_of_food} #{fav_food}(s)."
    else
        if fav_food == cookie 
            cookie_qty = num_of_people
        else 
            num_of_fav = num_of_people / my_list[fav_food] 
            cookie_qty = num_of_people % my_list[fav_food]
            cake_qty = num_of_fave if fave_food == "cake"
            pie_qty = num_of_fave if fave_food == "pie"
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  else
  raise ArgumentError.new("You can't make that food")
  end
end



#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 
#  
#  We didn't have enough time to finish writing the code.  Our GPS guide let us know in the end that
#  it would probably be better to not write as many if statements so it is more readable.  If I were to
#  refract even more, I would add in case statements instead.  Working with Katie was a little tough because
#  she couldn't talk (she was in another country and it was 1AM at that time there and she couldn't speak very loudly)
#  so I drove most of the time.  Also she was running on no sleep so she wasn't in the best condition to 
#  pair.  Both of us were a little rusty on our Ruby and kind of behind in Phase 0 so
#  we took a while to really understand the code and how we should refract it.  But I think we ended up finishing
#  most of it well enough.  Obviously it needs a lot more work, but what can ya do.  I really liked this GPS
#  session challenge especially because I think the code that needed to be refractored was so bad that it was
#  hard to even understand what was going on.  It's interesting to look at that kind of code and be able to 
#  think of a better way to write it.  There was a good sense of accomplishment even though we didn't get to finish.



