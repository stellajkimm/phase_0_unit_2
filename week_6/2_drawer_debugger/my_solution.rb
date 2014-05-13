# U2.W6: Drawer Debugger


# I worked on this challenge [with: Adam Hardy].


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware }
  end
end

class Silverware
  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end
  
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item("knife1") 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item  
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item("sharp_knife")

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item("sharp_knife")
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")
silverware_drawer.remove_item("fork") #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

drawer = Drawer.new

puts "Drawer is open"
puts drawer.open == true

puts "Drawer closes"
puts drawer.close == false

puts "Drawer adds items"
puts drawer.add_item("fork") == ["fork"]

puts "Drawer removes items"
puts drawer.remove_item("fork") == []

puts "Drawer dumps all items"
drawer.add_item("spoon")
drawer.add_item("fork")
drawer.dump
puts = drawer.contents == []

puts "View contents works"
drawer.add_item("spoon")
puts drawer.view_contents == "The drawer contains:- spoon"


# 5. Reflection 

# This challenge was fairly easy.  Working with Adam made it easier because he is a little more ahead
# than I am at Ruby.  This was the first time pairing with someone for Unit 2 because I was away in a
# different country for Week 4 and Week 5 so I didnt get a chance to pair.  It was a lot easier 
# working on a challenge with another person.  I don't have any questions on this challenge and I think
# I am getting the concepts.