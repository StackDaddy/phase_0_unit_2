# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?

#An integer 

# What is the output? (i.e. What should the code return?)

#A comma-separated integer as a string

# What are the steps needed to solve the problem?

#assign the integer parameter to a string
#Starting from the right hand side, iterate through the string, pushing the value to the front of a new array.  After every third byte,
#if there is a third byte, inert a comma.
#Join araay 



# 2. Initial Solution
def separate_comma(num)
	str = num.to_s.split('')
	str.reverse!
	commas = []
	count = 0
	str.each do |i|
		if count < 3
			commas.unshift(i)
			count += 1
		elsif count == 3 
			commas.unshift(",")
			commas.unshift(i)
			count = 1
		end 
	end
	commas.join("")
end 

puts separate_comma(4543)



		






# 3. Refactored Solution

#Two things that I had adjusted in the inital code.  The first was adjusting the count variable to 1.  I reset it to zero,
#forgetting that I had just pushed another integer past the commma. .  Also I did not correctly define the function with the correct name.


# 4. Reflection 

#this challenge was a big learning experience.  For one, before I even speak about code, I might as well metnion, 
#how I lost about an hour because I didn't follow directions.   I created my own function name instead of the one supplied, so the tests kept on
#failing and I couldn't figure out why.  When working with other people, I could see how it will be important to always use the same variable and function names.
#Secondly, this excersize helped me think about how the code works and envision the output in order to debut my code.  That is how I adjusted 0 to 1 on count.  