# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?

#An array of numbers of strings.

# What is the output? (i.e. What should the code return?)

#The function should return an array of the most frequent values.  If there is no most frequent value, all numbers should be returned in the array.


# What are the steps needed to solve the problem?

#Define a function mode that takes an array as a parameter.
#Define a empty hash, repetitions, where the key is the word, and the value is the number of times it is repeated in the array.
#Define a variable max and set it equal to zero.
#Define an empty array.
#Iterate through the string, and for each element, push the element into the hash, incrementing its value by one.
#Compare the value of each key value pair in the Hash with that of the max value.  
#If the number is greater than the max value, reassign the value of max and push the key to the mode array.
#If the max is equal to the hash value, simply push the hash key to the arrar.
#return array.


# 2. Initial Solution
def mode(array)
	record = Hash.new(0)
	max = 0 
	array_mode = []
	array.each do |element|
		record[element] += 1
		if record[element] > max 
			max = record[element]
			array_mode = [element]
		elsif record[element] == max 
			array_mode << element
		end 
	end
	array_mode.sort!
end 



# 3. Refactored Solution

def mode(array)
	record = Hash.new(0)
	max = 0 
	array_mode = []
	array.each do |element|
		record[element] += 1
		if record[element] > max 
			max = record[element]
			array_mode = [element]
		elsif record[element] == max 
			array_mode << element
		end 
	end
	array_mode.sort!
end 

#  I actually did not plan on sorting my array_mode array, and that caused one test to fail.



# 4. Reflection

#This wa sdefinitely a little more challenging.  Fortunately, I remember having solved this same problem in JS, so I was 
# pretty familiar with how to form a solution.  Using the Hash was the key.   