# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: An array of strings
# Output: A class Die, that when called, can return the number sides it has and 
#one of its sides.  
# Steps:
#Initialize the Die by accepting  a splat argument, creating the condition for an error 
#if the wrong amount of variables are put in.  Create a @labels local variable.
#define a sides method and a roll method.  


# 3. Initial Solution

#class Die
#  def initialize(*labels)
#  	unless labels.length > 0 
#    	raise ArgumentError.new("There must be 1 or more sides.")
#    end
#    @labels = labels
#  end

#  def sides
#  	@labels.length
#  end

#  def roll
#  	@labels[rand(sides)]
#  end
#end



# 4. Refactored Solution

class Die
  def initialize(labels) 
    raise ArgumentError.new("There must be 1 or more sides.") if labels == []
    @labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[rand(sides)]
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE









# 5. Reflection 

#This section definitely made me think a little bit more.  At first I went 
#to use a splat argument, but then I realized we just entered in our data as an
#array.  Solidified my syntax with raising an error.  
