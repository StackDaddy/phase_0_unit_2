# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by ].

# 2. Pseudocode

# Input:  The number of sides that the die will have.
# Output:  A class that can create die with a certain amount of sides and each die
		# object will have a funtion that identifies how many dies they have, and then you will be 
		#able to "roll" the die, and the random number within the range will be printed.
# Steps:
#Define the class die.
#Initialize the die, including the ArgumentError conditional branch
#Define the side method
#Define the roll method.


# 3. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0 
    	raise ArgumentError.new("sides must be greater than or equal to 1.")
    end
    @sides = sides
  end
  
  def sides
    @sides
  end
  
  def roll
    1 + rand(@sides)
  end
end



# 4. Refactored Solution

#Everything worked the first time around.  




# 1. DRIVER TESTS GO BELOW THIS LINE

#puts Die.new(0) == "ArgumentError: sides must be greater than or equal to 1."

die = Die.new(sides) # create a randomly sided die 

puts die.sides == sidees # does Die#sides return side_num?
puts (1..sides).include?(die.roll)



# 5. Reflection 

#I was somewhat familiar with this challenge from reading Chris Pine's Learn to Program book.  He used 
#this example in hs class chapter.  I did learn, about the raising an Argument error.  That was pretty cool.
#Iam still having trouble using that in a driver test code however.  I will have to continue to learn how that class, assuming it is a class
#worlks and then come back and play with it  little more in the driver test code.  
