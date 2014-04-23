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



# 4. Reflection 