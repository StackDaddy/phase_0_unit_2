# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?

#The input can be either 2 or 3 things.  First, an array.  Second a minimun length the array must be.  Lastly, and optional
#Is the relplacement value for the empty spaces in the array.  

# What is the output? (i.e. What should the code return?)

#Well, there will be two different methods.  Pad, will return a new array with either padding or no padding depending on whether or not 
#it met the minimum length requirement.  Pad! will alter the existing array.

# What are the steps needed to solve the problem?

#By the way the instructions are calling the pad method on an array, I interpret this as having to create a pad method in the class Array that does this.  
#Define two different methods, pad and pad!
#For Pad!, the destructive method, just use a while loop to comapre min length and array length
## pushing in the pad value in the body 
#For the non-destructive, use an assignment statement, linkig a new variable to Array.new(self)
# and then use the while loop.  


# 2. Initial Solution



class Array
def pad!(min_length, pad_item = nil)
	while min_length > self.length
		self << pad_item
	end
	self 
end


def pad(min_length, pad_item = nil)
  arr = Array.new(self)
  while min_length > arr.length
    arr << pad_item 
  end
  arr
end

end


print [1,2,3].pad!(5)
print [1,2,3].pad(5)





# 3. Refactored Solution

# The destructive method was not a problem for me.  However, I had a lot of difficulty 
## ceating the non destructive method.  ##First I did 
## arr = self 
# I tried using variations of arr << pad_item, arr += pad_item, arr+=pad_item.to_a,
#but nothing helped make it non destructive.  Array.new(self) was the answer for me in terms of being able to get a new object identifier.


# 4. Reflection

#This excersize definitely challenged me.  Like I mentioned in the refactored solution section, I had trouble creating 
#a non destructive function.  For a while I was just tinkering with different variations of logic, but none of that worked,
# because there was no variation of logic that fixed the non destructive problem.   This really forced me to get into IRB and play around with different method and 
#and tests.  For the first time, I really relied on the tests to guide me.  Eventually I realized I had to somehow create a new array with a 
#different object identifier and that led me to my solution.  For sure helped me see the value in test-driven development. 


