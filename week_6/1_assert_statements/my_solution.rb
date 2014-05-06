# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

#def assert
#  raise "Assertion failed!" unless yield
#end

#name = "bettysue"
#assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
#In the above code, we are calling the assert method and passing in a block of code.  The block of
#code is a consitional expression, testing whether or not the variable name is equal to a supplied name.
#In the first assert call, we will raise "Assertion failed" unlss the name equals bettysue.  Because 
#we assigned name to bettysue, the unless conditoon evaluates to true, so the assertion error is not raised.
#The second Assert cal, however, we get an assertion failed message.  ".rb:9:in `assert': Assertion failed!" is what 
#the terminal spits back, and it means that in the assert method, we raise an error in line 9 becuase the blovk we passed 
#equated to false.  


# 3. Copy your selected challenge here
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

#puts Die.new(0) == #should raise an Argument Error

die = Die.new(6)

puts die.sides == 6 
puts (1..6).include?(die.roll)



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed!" unless yield
end

die = Die.new(6)

assert { die.sides == 6}

assert { (1..6).include?(die.roll) }




# 5. Reflection
#Looking at Rspec for the first time was pretty confusing, and so I like how we are gradually being eased into
#the concepts.  Reviewing blocks was necessary for me, but it came back quickly and I was glad I did it.
#One of my tests was just a commented out section on whether or not an Argument error would be raised on
#Die.new(0).  I am still not sure how to convert this into an assert statement.  To be continued...


