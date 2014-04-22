# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?

#For Array method it is an array of numbers.  For sentence_maker, it is an array of strings and numbers.
# What is the output? (i.e. What should the code return?)
#For Array, the output is the sum of all the numbers in the array.  For sentence_maker 
#the output is a sentence where the first word is capitalized and ends with a period.
# What are the steps needed to solve the problem?
#Define Array method.
#Create variable total, assigned to value 0.
#Loop through array, and each element should be added to total.
#Return Total.
 
 #Define sentence_maker method.  
 #create string variable sentence.
 #Assign variable to a a join method called on array.
 #Modify sentence to capitablize first word and add a period to the end.
 #Return sentence.   


# 2. Initial Solution
def total(array) 
	sum = 0 
	array.each do |x|
		sum += x
	end
	return sum
end


def sentence_maker(array)
	sentence = array.join(' ')
	sentence.capitalize!
	sentence << "."
	return sentence
end





# 3. Refactored Solution

def total(array) 
	sum = 0 
	array.each do |x|
		sum += x
	end
	return sum
end

def sentence_maker(array)
	sentence = array.join(' ').capitalize! << "."
end

# 4. Reflection 

#This challenge was definitely different from the previous challenges.  There are
#alot more parts to solving these challenges.  For one, I had to go back and reveiw 
#how to use git commands, how to use irb, and not to mention, how to write ruby code and then run a test.
#I definitely feel accomplished afted passing all the tests.  I think this is ok for now, but I am still a little
#unclear on how exactly these tests are being run.  



